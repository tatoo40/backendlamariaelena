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
-- Data for Name: _prisma_migrations; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

INSERT INTO public._prisma_migrations VALUES ('f0651fca-ceaf-4b89-93ba-318a50d73a41', 'f089d4eb96d615b5eae019576fa957345169ba8bfcf8fe2c6cdfa442933b1477', '2023-08-09 21:59:34.346563+00', '20230722170049_sdasdsa', NULL, NULL, '2023-08-09 21:59:34.338296+00', 1);
INSERT INTO public._prisma_migrations VALUES ('35813692-82cb-447d-a478-0781f0bada9a', 'c82b937b88348fed6f3b79b9868d631d8dd249c0d4f66cb9039d1c8297e2d52f', '2023-08-09 21:59:33.802933+00', '20230602222715_primera_nuevamente', NULL, NULL, '2023-08-09 21:59:33.705326+00', 1);
INSERT INTO public._prisma_migrations VALUES ('912fbfa1-6c94-4f4a-8e99-cbd1c8caed7f', 'ca7d73f11ea893f3df14ede022e9b98b631b1dcaf3901e7c66ae710d382ad74d', '2023-08-09 21:59:34.030795+00', '20230703215836_lanzamiento', NULL, NULL, '2023-08-09 21:59:34.022875+00', 1);
INSERT INTO public._prisma_migrations VALUES ('de6bd151-8846-4e9d-b25c-1d06613ea60f', '5116352d3c53576e4b2d7db1104a8d53d445523f211d62f165cf86cdbe0a259a', '2023-08-09 21:59:33.814188+00', '20230603210518_despues_de_los_insert', NULL, NULL, '2023-08-09 21:59:33.805517+00', 1);
INSERT INTO public._prisma_migrations VALUES ('259cb916-5701-461a-8bed-90bf1c06d0bd', 'ce9fe7559336487871ecc196e72aa7beb762fcc1f2b194c7c37bda20de97825c', '2023-08-09 21:59:33.82344+00', '20230603214022_dasdasd', NULL, NULL, '2023-08-09 21:59:33.816567+00', 1);
INSERT INTO public._prisma_migrations VALUES ('df90023f-8569-4d73-9b81-1ddf118f8dd1', 'db5693f56dbe280a5d7bf5a9840aac3591337412846b0dd7c5755f3840757972', '2023-08-09 21:59:34.160129+00', '20230712231737_borrado_logico_si_o_no', NULL, NULL, '2023-08-09 21:59:34.150635+00', 1);
INSERT INTO public._prisma_migrations VALUES ('da58ee47-136a-4643-900d-293a6819438b', '070a964afc343269009034853f35a7aa8cf7733720cf3d21ffad7a4b2b306245', '2023-08-09 21:59:33.837825+00', '20230624225115_sdasdasd', NULL, NULL, '2023-08-09 21:59:33.825999+00', 1);
INSERT INTO public._prisma_migrations VALUES ('b4077435-a3c3-49d6-95c2-9ec37de126fe', '0a33b9d9500ec01940c6bff887aca993f908e481c1a52801dbf41e536457e377', '2023-08-09 21:59:34.041341+00', '20230703222647_sigo_con_los_controles', NULL, NULL, '2023-08-09 21:59:34.03376+00', 1);
INSERT INTO public._prisma_migrations VALUES ('7d5c74a2-015c-4a8d-b1d8-63631eed4648', '12aa6c966a63010e07708d50ad710b5b845fc5b782a854f6c6a059be3582f9ee', '2023-08-09 21:59:33.848112+00', '20230626202706_token_recuperacion_usuario', NULL, NULL, '2023-08-09 21:59:33.840397+00', 1);
INSERT INTO public._prisma_migrations VALUES ('251edaae-9532-4c1c-966e-de550819f9f4', '138012afb561926f5d7043b908c68ee59ba4cdf0eeb3b9c20bcef223c73a3c6c', '2023-08-09 21:59:33.860221+00', '20230626211144_dasdasdasdasdas1111111111111111111', NULL, NULL, '2023-08-09 21:59:33.851351+00', 1);
INSERT INTO public._prisma_migrations VALUES ('41a54e5b-6f18-45d2-bd43-02cbb82f462a', '9f4522b821d3f44f83e1af19106943f57fa76bb026d3bcf47fe5a32f68a7fb16', '2023-08-09 21:59:33.871255+00', '20230626211853_ultima_para_ver_si_la_toma', NULL, NULL, '2023-08-09 21:59:33.863029+00', 1);
INSERT INTO public._prisma_migrations VALUES ('7f4fd88e-a943-4f41-b09d-bdb475b2cdc1', 'df89657892ef30faf65666282b8137a1cc369d155ffcfa9f194b58f39ef84b9e', '2023-08-09 21:59:34.062794+00', '20230704140141_parte_contable', NULL, NULL, '2023-08-09 21:59:34.044078+00', 1);
INSERT INTO public._prisma_migrations VALUES ('e0df3939-8e64-43da-a184-19f1cb99b74c', 'e081e7120ef44e8f926b7437e1d3c5c59a09526d5f76a9793d8a7f674856e1bc', '2023-08-09 21:59:33.932294+00', '20230628152552_ultima_con_proveedores_y_titularess', NULL, NULL, '2023-08-09 21:59:33.87397+00', 1);
INSERT INTO public._prisma_migrations VALUES ('148c49cf-d846-4086-86ba-7dc198157eb1', '4e22df388d662ff6d33245e1a0ef1e807240bb284d59eb8a41f9069c3f9c9d86', '2023-08-09 21:59:33.948753+00', '20230701141135_error_en_la_tabal_de_usuarios_x_empresa', NULL, NULL, '2023-08-09 21:59:33.935101+00', 1);
INSERT INTO public._prisma_migrations VALUES ('3d428c69-61da-4e49-925c-7ed0cb88e29a', '66799cb8c65cdef5b51e78ea7598335d0d2e85a5774c0e3014ca16cffb472d07', '2023-08-09 21:59:34.265707+00', '20230717012814_dsda', NULL, NULL, '2023-08-09 21:59:34.254637+00', 1);
INSERT INTO public._prisma_migrations VALUES ('d99b9003-ac01-4190-8186-b87b1b987d01', '29b061600ca5054be8e5a862c4e996916efc10fe9b649e770c446d92b4de188d', '2023-08-09 21:59:33.978383+00', '20230703182454_permisos_de_usuario_y_tabla_de_log', NULL, NULL, '2023-08-09 21:59:33.951858+00', 1);
INSERT INTO public._prisma_migrations VALUES ('cfeb3b7a-9d7a-4a8a-8386-26e70110f028', '330363ee34249f9dcb1ed687c158f5b807799a5b4fb5e3ee2a91f9f7f2f3709c', '2023-08-09 21:59:34.079558+00', '20230705125855_asignacion_de_permisos_automatica', NULL, NULL, '2023-08-09 21:59:34.065495+00', 1);
INSERT INTO public._prisma_migrations VALUES ('85bc2139-f788-4f03-b150-9f8862bbcac8', '978f75908d2c43d496071a3cc76134084f54d6e8597b3e43c4c842c9601ff15b', '2023-08-09 21:59:33.988975+00', '20230703182930_usuario_mod_tabla_de_permisos', NULL, NULL, '2023-08-09 21:59:33.981115+00', 1);
INSERT INTO public._prisma_migrations VALUES ('21cb2ec6-a5ac-4a43-ac3e-07637f2e2564', '1471c815fbe29bf7e749143c0331a268717f99b8fff08262df3f07c0533e1ebf', '2023-08-09 21:59:34.00996+00', '20230703204353_controles', NULL, NULL, '2023-08-09 21:59:33.992055+00', 1);
INSERT INTO public._prisma_migrations VALUES ('c2e3d892-76a2-4ace-8035-755c1c131fed', 'aadf281f7b1403a730a77709b93dfeefc17ac0b72f367afc9802de021bbd3817', '2023-08-09 21:59:34.171668+00', '20230713002343_sdasd', NULL, NULL, '2023-08-09 21:59:34.163033+00', 1);
INSERT INTO public._prisma_migrations VALUES ('91ba6faf-8731-43ee-88cf-9375cf1328e7', '640799dc660490fece341c2f75285ba1b7252102c2574006f2a06a84af8de2b2', '2023-08-09 21:59:34.020408+00', '20230703205411_upgrade_controles', NULL, NULL, '2023-08-09 21:59:34.012784+00', 1);
INSERT INTO public._prisma_migrations VALUES ('b4c334d1-f3b3-48d4-81df-6575c7c6e7ac', 'adb18d26317804347c1b9b0324cb4758a6dde840269a0e71de4a5997bf37bf5b', '2023-08-09 21:59:34.103534+00', '20230712131919_cambio_de_nro_lote', NULL, NULL, '2023-08-09 21:59:34.082175+00', 1);
INSERT INTO public._prisma_migrations VALUES ('01dd64ab-3c34-4b89-a00e-c50e40acac70', 'e23f5263bae4784b607b9ebb68e4c3beb0936c4fb782d714077260be75fd5156', '2023-08-09 21:59:34.113391+00', '20230712180705_observacion_en_la_cpf_log', NULL, NULL, '2023-08-09 21:59:34.106244+00', 1);
INSERT INTO public._prisma_migrations VALUES ('b23eccdf-e58b-4ea9-8b96-e4958b31c35b', '4a60337c1c9c02e5109a3bff6939fd6f326111845870438931beebd7ad4adc59', '2023-08-09 21:59:34.136595+00', '20230712195930_motivos_sanitarios', NULL, NULL, '2023-08-09 21:59:34.115739+00', 1);
INSERT INTO public._prisma_migrations VALUES ('ff68a5f0-aeb1-493e-a4c7-04b931302861', '2ab4a94102731350f0a9a86cc2b1748c5f7266f2bdbc596737e83681ce3e7a5b', '2023-08-09 21:59:34.183635+00', '20230713004026_asdasd', NULL, NULL, '2023-08-09 21:59:34.175055+00', 1);
INSERT INTO public._prisma_migrations VALUES ('b36e4ba1-982f-4b69-b887-dd798b2fdebf', '16b57884262030b9ed4fb09520728d3d9ef598a6de3fcfc7c7108b7973739578', '2023-08-09 21:59:34.14769+00', '20230712214319_bania_garrapata', NULL, NULL, '2023-08-09 21:59:34.139699+00', 1);
INSERT INTO public._prisma_migrations VALUES ('970b7450-45e4-466a-a63f-a7cc20cebc3a', 'dd5323b6c68747ff5db939cb6e75c1d042ececd39e6f65331f786cd56990623f', '2023-08-09 21:59:34.319178+00', '20230717235525_vghf', NULL, NULL, '2023-08-09 21:59:34.300446+00', 1);
INSERT INTO public._prisma_migrations VALUES ('8b3727a4-ca48-4420-b566-8f9de446bfc1', '2056c46e7b6106da8a70ad06466c8e3791b1fb1ab3fb1acfedb47ba41874c6db', '2023-08-09 21:59:34.200983+00', '20230713170430_hhj', NULL, NULL, '2023-08-09 21:59:34.187206+00', 1);
INSERT INTO public._prisma_migrations VALUES ('241892f4-dc4b-4c17-a9a8-27632b1a88ec', '6c694cc11cbbc81cb6c2cd57465b673e7c3c1032c2033c3f7b46cd182e0c262c', '2023-08-09 21:59:34.276219+00', '20230717014340_dsdsa', NULL, NULL, '2023-08-09 21:59:34.268722+00', 1);
INSERT INTO public._prisma_migrations VALUES ('e5ef51a6-d438-40bc-af51-d83eb98d26c8', 'bb81e22260ebd9c9c56f8aece0141ce17b8466ffc45f09348e2b59b4891fc279', '2023-08-09 21:59:34.240323+00', '20230714191106_ddas', NULL, NULL, '2023-08-09 21:59:34.204035+00', 1);
INSERT INTO public._prisma_migrations VALUES ('2b171ae2-01f6-478b-8ac6-7e98a7edc164', 'bd21679539ade9ef9546b3db0cad30071596f9068d85f3d28aad658be2884aa0', '2023-08-09 21:59:34.251979+00', '20230717002203_sdasdasd', NULL, NULL, '2023-08-09 21:59:34.243041+00', 1);
INSERT INTO public._prisma_migrations VALUES ('79a206f5-2fcf-4564-8597-0fc63706868e', '30708cff283ba7baede9435e42367a8f39b8bfbde405381dbd64c4f6cf0f5a53', '2023-08-09 21:59:34.286657+00', '20230717192754_kjsfadas', NULL, NULL, '2023-08-09 21:59:34.278738+00', 1);
INSERT INTO public._prisma_migrations VALUES ('96632f16-b186-4477-8cd7-9b8b5530fb73', '4f55c76d10cf168913d5b0e115f780519e1bff1d920146484bed277a325ff3c6', '2023-08-09 21:59:34.297555+00', '20230717200224_dasdsad', NULL, NULL, '2023-08-09 21:59:34.289924+00', 1);
INSERT INTO public._prisma_migrations VALUES ('0fb53942-77dd-41ef-970e-94fa422ca444', '73cc6b360c7056fe43dcbed4db7bc2ee994e83f50e709fa25bde565aa4482b44', '2023-08-09 21:59:34.335418+00', '20230717235647_dasdas', NULL, NULL, '2023-08-09 21:59:34.321934+00', 1);
INSERT INTO public._prisma_migrations VALUES ('4faad293-d988-4ab1-b69d-3209021f989d', '0f35c497cd9e18b65e97854f752c384fa00ab0060d9583f1cadad7a01748fbb4', '2023-08-09 21:59:34.424838+00', '20230726005148_jhjk', NULL, NULL, '2023-08-09 21:59:34.360728+00', 1);
INSERT INTO public._prisma_migrations VALUES ('66b6ab3f-f177-4397-8ada-c6e1cd91c616', '0c0ec7b06b672290971cbbe82617fa71b826239ba94b3bc3746b8a2482ca7579', '2023-08-09 21:59:34.357268+00', '20230724204335_dasdas', NULL, NULL, '2023-08-09 21:59:34.349337+00', 1);
INSERT INTO public._prisma_migrations VALUES ('9ce1f4e7-e3a1-437e-a7a2-c1095670b6e8', 'bb861d64910b73b4534709023c3952e46b5d88c7181fa5af397ef7921be2cbf6', '2023-08-09 21:59:34.434765+00', '20230727201933_sdasd', NULL, NULL, '2023-08-09 21:59:34.427453+00', 1);
INSERT INTO public._prisma_migrations VALUES ('2287a6ad-c65e-424a-8b72-b90351d4345a', 'e2fc6dfab818c8951409dd801a765c7918e019d79d9d03c83130b2c9f2f672ff', '2023-08-09 21:59:34.45712+00', '20230728231934_romaneo', NULL, NULL, '2023-08-09 21:59:34.43744+00', 1);
INSERT INTO public._prisma_migrations VALUES ('da1eb435-b49c-428e-af80-79e6552f0e1a', 'f58c4b8a3f05bf0a25df48aab67bba8c50c4388b633bdb1e5b967e52efe9187d', '2023-08-09 21:59:34.471937+00', '20230731185410_sdasdas', NULL, NULL, '2023-08-09 21:59:34.460034+00', 1);
INSERT INTO public._prisma_migrations VALUES ('538546a9-0ee2-4048-a915-21878e5f40e3', '27576039ceed2385f36477af10ce125ca87eb898ad19c95bb4706ba4d5e7b725', '2023-08-09 21:59:34.482231+00', '20230801212217_jhghjl', NULL, NULL, '2023-08-09 21:59:34.474855+00', 1);
INSERT INTO public._prisma_migrations VALUES ('00cc174f-798e-48a4-9b21-3bd2ebd78efb', '35c05c54774eced39f8ea33081c37af5ecd08827a77f1e68a1a754ef97a894fd', '2023-08-09 21:59:34.492661+00', '20230801214441_dsasd', NULL, NULL, '2023-08-09 21:59:34.484948+00', 1);
INSERT INTO public._prisma_migrations VALUES ('3587d619-1112-4ebb-931d-d7e2321e7c01', 'ec6db84f918b762892195f8de3d1a9be5f05d6c76a3370a2eede99c1d847f8f7', '2023-08-09 21:59:34.504095+00', '20230802225201_', NULL, NULL, '2023-08-09 21:59:34.495519+00', 1);
INSERT INTO public._prisma_migrations VALUES ('30d9a26b-e5a3-4832-8b4e-388e9dfbe993', 'b024f064f10ad80eb84c0b5ab85a315d632d1533e0f8225d1b971d183a125559', '2023-08-09 21:59:34.520261+00', '20230803222102_sdas', NULL, NULL, '2023-08-09 21:59:34.507696+00', 1);
INSERT INTO public._prisma_migrations VALUES ('f70c82b7-9793-4770-b4b6-70d883e7f52d', '1bb26c8e093c3c3504c4eac1610d09bea518c807bc5696f5741cfd00c1e148dc', '2023-08-09 21:59:34.547613+00', '20230809214522_sdasdsa', NULL, NULL, '2023-08-09 21:59:34.52282+00', 1);
INSERT INTO public._prisma_migrations VALUES ('23cf95f7-c179-4638-ad08-d16e10ea2f4f', '87414bff9c7a38b52a836a1f42f5cafe5bd454f5d04cb85363ffe74189a0b125', '2023-08-09 21:59:34.558402+00', '20230809215324_bjjkh', NULL, NULL, '2023-08-09 21:59:34.550355+00', 1);
INSERT INTO public._prisma_migrations VALUES ('423f64c4-ff98-4ac5-ab78-8dfe782423b6', 'c36c1d4fd88927df5fd4d555fe96eb8f5c3344041c4e062a03d9749d6fa88870', '2023-08-09 22:34:21.322502+00', '20230809223421_dsdas', NULL, NULL, '2023-08-09 22:34:21.314588+00', 1);
INSERT INTO public._prisma_migrations VALUES ('31d597dc-2fab-4690-aaac-94270de15c91', '1a5d958f1c000b00d3e02e6d2accd17737dfec9c0dd0603fce81b6a9a0315fc3', '2023-08-10 00:13:18.044129+00', '20230810001317_dasdas', NULL, NULL, '2023-08-10 00:13:18.03664+00', 1);
INSERT INTO public._prisma_migrations VALUES ('bf058285-5bf2-4c8f-831e-5b173976adfb', 'e77e7f0392672f84adee80fdf8f207079460733da7311c96869c3ab3e0aa7318', '2023-08-10 01:51:20.028529+00', '20230810015119_sdasd', NULL, NULL, '2023-08-10 01:51:20.021332+00', 1);
INSERT INTO public._prisma_migrations VALUES ('e99087fb-fdb9-4c39-8e06-d7d001cdc298', '6f4e100ae1cc151317db3b19674296f93c1bd5f713b81f4ca16a3e47d76eb57f', '2023-08-11 01:28:04.308433+00', '20230811012804_hghj', NULL, NULL, '2023-08-11 01:28:04.287027+00', 1);
INSERT INTO public._prisma_migrations VALUES ('af0fd1c0-6944-40e7-a9dc-98942fc44bff', '8857478ec06edbdb01b9dbe8f005c45dd79eddddab067a9379d93148cb2bbcce', '2023-08-11 01:34:18.952246+00', '20230811013418_sdsa', NULL, NULL, '2023-08-11 01:34:18.94438+00', 1);
INSERT INTO public._prisma_migrations VALUES ('9cf394ad-1c3d-4062-868a-45d9dea972dd', 'acac53d874852e66eaf7f824427c38132041c019fd50acfef4c4176f639efa23', '2023-08-11 01:34:51.866006+00', '20230811013451_ssdsa', NULL, NULL, '2023-08-11 01:34:51.859483+00', 1);
INSERT INTO public._prisma_migrations VALUES ('de4ae8c8-19cf-4c19-95e4-06cc21f45177', '9c657d53070887bfca3b370eed1f16f0a2555f831c380ef26ff44c40e890d406', '2023-08-15 23:14:26.751733+00', '20230815231426_sdfasdf', NULL, NULL, '2023-08-15 23:14:26.727296+00', 1);
INSERT INTO public._prisma_migrations VALUES ('980ad8ac-c806-4653-b813-4fd929bcc547', '310dc47b33f70bc06532012d0a3623e7eba709d1f1744c7972e46031800d8954', NULL, '20230824125408_sdfasd', 'A migration failed to apply. New migrations cannot be applied before the error is recovered from. Read more about how to resolve migration issues in a production database: https://pris.ly/d/migrate-resolve

Migration name: 20230824125408_sdfasd

Database error code: 23503

Database error:
ERROR: insert or update on table "cpt_pago_fact_prov" violates foreign key constraint "cpt_pago_fact_prov_id_estado_pago_fkey"
DETAIL: Key (id_estado_pago)=(1) is not present in table "estado_pago_prov".

DbError { severity: "ERROR", parsed_severity: Some(Error), code: SqlState("23503"), message: "insert or update on table \"cpt_pago_fact_prov\" violates foreign key constraint \"cpt_pago_fact_prov_id_estado_pago_fkey\"", detail: Some("Key (id_estado_pago)=(1) is not present in table \"estado_pago_prov\"."), hint: None, position: None, where_: None, schema: Some("public"), table: Some("cpt_pago_fact_prov"), column: None, datatype: None, constraint: Some("cpt_pago_fact_prov_id_estado_pago_fkey"), file: Some("ri_triggers.c"), line: Some(2465), routine: Some("ri_ReportViolation") }

   0: sql_migration_connector::sql_database_step_applier::apply_script
           with migration_name="20230824125408_sdfasd"
             at migration-engine/connectors/sql-migration-connector/src/sql_database_step_applier.rs:100
   1: migration_core::api::ApplyMigrations
             at migration-engine/core/src/api.rs:87', NULL, '2023-08-24 12:54:08.335023+00', 0);


--
-- Data for Name: acciones; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

INSERT INTO public.acciones VALUES (0, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 'No asignado');
INSERT INTO public.acciones VALUES (1, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 'Alta');
INSERT INTO public.acciones VALUES (2, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 'Baja');
INSERT INTO public.acciones VALUES (3, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 'Editar');
INSERT INTO public.acciones VALUES (4, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 'Visualizar');


--
-- Data for Name: tipos_ganado; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

INSERT INTO public.tipos_ganado VALUES (0, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'No asignado');
INSERT INTO public.tipos_ganado VALUES (1, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Vacuno');
INSERT INTO public.tipos_ganado VALUES (2, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Ovino');
INSERT INTO public.tipos_ganado VALUES (3, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Equino');


--
-- Data for Name: categorias_ganado; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

INSERT INTO public.categorias_ganado VALUES (3, '2023-07-19 22:10:21.8', '2023-07-19 22:10:21.8', 'S', 'Vaca invernada', 1);
INSERT INTO public.categorias_ganado VALUES (0, '2023-07-19 22:40:21.485', '2023-07-19 22:40:21.485', 'S', 'No asignado', 1);
INSERT INTO public.categorias_ganado VALUES (4, '2023-07-19 22:10:21.8', '2023-07-19 22:10:21.8', 'S', 'Vaca preñada', 1);
INSERT INTO public.categorias_ganado VALUES (5, '2023-07-19 22:10:21.8', '2023-07-19 22:10:21.8', 'S', 'Ternero al pie', 1);
INSERT INTO public.categorias_ganado VALUES (7, '2023-07-19 22:10:21.8', '2023-07-19 22:10:21.8', 'S', 'Vaca parida', 1);
INSERT INTO public.categorias_ganado VALUES (8, '2023-08-22 19:34:19.605', '2023-08-22 19:34:19.605', 'S', 'Vaca vacia', 1);
INSERT INTO public.categorias_ganado VALUES (9, '2023-08-22 20:24:36.978', '2023-08-22 20:24:36.979', 'S', 'Ternero', 1);
INSERT INTO public.categorias_ganado VALUES (10, '2023-08-22 20:24:55.477', '2023-08-22 20:24:55.478', 'S', 'Novillo 1 a 2 años', 1);
INSERT INTO public.categorias_ganado VALUES (11, '2023-08-22 20:25:05.782', '2023-08-22 20:25:05.783', 'S', 'Novillo 2 a 3 años', 1);
INSERT INTO public.categorias_ganado VALUES (12, '2023-08-22 20:25:21.253', '2023-08-22 20:25:21.254', 'S', 'Novillo mas de 3 años', 1);
INSERT INTO public.categorias_ganado VALUES (13, '2023-08-22 20:25:53.431', '2023-08-22 20:25:53.431', 'S', 'Ternera', 1);
INSERT INTO public.categorias_ganado VALUES (14, '2023-08-22 20:26:10.656', '2023-08-22 20:26:10.657', 'S', 'Vaquillona 1 a 2 años', 1);
INSERT INTO public.categorias_ganado VALUES (15, '2023-08-22 20:26:33.222', '2023-08-22 20:26:33.223', 'S', 'Vaquillona mas de 2 años', 1);
INSERT INTO public.categorias_ganado VALUES (16, '2023-08-22 20:27:52.023', '2023-08-22 20:27:52.024', 'S', 'Toro', 1);


--
-- Data for Name: empresas; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

INSERT INTO public.empresas VALUES (1, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 1, 'S', 'La Maria Elena SRL', 'La Maria Elena SRL', '217965240018', 'Avenida del sol 2365', 'jifb@gmail.com', '094 099 400', 'Ninguna observacion');


--
-- Data for Name: marcas_ganado; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

INSERT INTO public.marcas_ganado VALUES (1, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Hereford', 1);
INSERT INTO public.marcas_ganado VALUES (2, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Bradford', 1);
INSERT INTO public.marcas_ganado VALUES (3, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Jersey', 1);
INSERT INTO public.marcas_ganado VALUES (4, '2023-07-19 22:13:20.083', '2023-07-19 22:13:20.084', 'S', 'Angus', 1);
INSERT INTO public.marcas_ganado VALUES (0, '2023-07-19 22:40:33.369', '2023-07-19 22:40:33.37', 'S', 'No asignado', 1);
INSERT INTO public.marcas_ganado VALUES (5, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Cruza', 1);


--
-- Data for Name: tasas_iva; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

INSERT INTO public.tasas_iva VALUES (0, '2023-08-09 00:00:00', '2023-08-09 00:00:00', 'S', 'No asignado', 0.000000000000000000000000000000);
INSERT INTO public.tasas_iva VALUES (1, '2023-08-09 00:00:00', '2023-08-09 00:00:00', 'S', 'Excento', 0.000000000000000000000000000000);
INSERT INTO public.tasas_iva VALUES (2, '2023-08-09 00:00:00', '2023-08-09 00:00:00', 'S', 'Minimo', 10.000000000000000000000000000000);
INSERT INTO public.tasas_iva VALUES (3, '2023-08-09 00:00:00', '2023-08-09 00:00:00', 'S', 'Basico', 22.000000000000000000000000000000);


--
-- Data for Name: tipo_articulo; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

INSERT INTO public.tipo_articulo VALUES (1, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Producto termninado');
INSERT INTO public.tipo_articulo VALUES (2, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Insumos');
INSERT INTO public.tipo_articulo VALUES (3, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Servicios');
INSERT INTO public.tipo_articulo VALUES (0, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'No asignado');
INSERT INTO public.tipo_articulo VALUES (4, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Insumos veterinarios');


--
-- Data for Name: unidades; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

INSERT INTO public.unidades VALUES (0, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'No asignado', '-');
INSERT INTO public.unidades VALUES (4, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Mililitro', 'ml');
INSERT INTO public.unidades VALUES (1, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Unidad', 'Un.');
INSERT INTO public.unidades VALUES (2, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Kilogramo', 'Kg.');
INSERT INTO public.unidades VALUES (3, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Litro', 'lts');
INSERT INTO public.unidades VALUES (5, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Frasco de 100ml', 'F 100ml');
INSERT INTO public.unidades VALUES (6, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Frasco de 250ml', 'F 250ml');
INSERT INTO public.unidades VALUES (7, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Frasco de 500ml', 'F 500ml');


--
-- Data for Name: articulos; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

INSERT INTO public.articulos VALUES (3, 'INSGASOIL', '2023-07-19 22:44:40.565', '2023-07-19 22:44:40.566', 'S', 'Gasoil', 3, 0, 0, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.articulos VALUES (4, 'INSNAFTA', '2023-07-19 22:45:15.039', '2023-07-19 22:45:15.039', 'S', 'Nafta', 3, 0, 0, 1, 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.articulos VALUES (0, 'NOASIG', '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'No asignado', 1, 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.articulos VALUES (6, 'saSA', '2023-08-09 23:23:24.026', '2023-08-09 23:42:34.309', 'N', 'saSas', 0, 0, 1, 1, 0, 0, 0, 1, 1, 121.000000000000000000000000000000);
INSERT INTO public.articulos VALUES (7, 'INSCARBUNCO', '2023-08-09 23:54:52.838', '2023-08-09 23:54:52.839', 'S', 'Carbunco', 4, 0, 0, 1, 4, 1, 0, 5, 0, 100.000000000000000000000000000000);
INSERT INTO public.articulos VALUES (10, 'VACINVCRU', '2023-08-16 00:30:08.238', '2023-08-16 00:30:08.239', 'S', 'Vaca invernada cruza', 1, 3, 5, 1, 1, 0, 0, 2, 2, 1.000000000000000000000000000000);
INSERT INTO public.articulos VALUES (9, 'INSPOLIVAC', '2023-08-10 22:03:55.552', '2023-08-10 22:03:55.552', 'S', 'Polivac', 4, 0, 0, 1, 4, 1, 0, 6, 0, 250.000000000000000000000000000000);
INSERT INTO public.articulos VALUES (8, 'INSNITROMIC', '2023-08-10 21:34:27.496', '2023-08-10 21:34:27.496', 'S', 'Nitromic Iver', 4, 0, 0, 1, 4, 1, 0, 7, 0, 500.000000000000000000000000000000);
INSERT INTO public.articulos VALUES (11, 'VACPRECRU', '2023-08-22 19:22:28.912', '2023-08-22 19:22:28.913', 'S', 'Vaca preñada cruza', 1, 4, 5, 1, 1, 0, 0, 2, 2, 1.000000000000000000000000000000);
INSERT INTO public.articulos VALUES (12, 'VACVACCRU', '2023-08-22 19:32:54.832', '2023-08-22 19:32:54.833', 'S', 'Vaca vacia cruza', 1, 8, 5, 1, 1, 0, 0, 2, 2, 1.000000000000000000000000000000);
INSERT INTO public.articulos VALUES (2, 'SERCOMIS1', '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Servicio comision 1%', 1, 0, 1, 1, 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.articulos VALUES (14, 'TERNERACRU', '2023-08-22 20:36:46.072', '2023-08-22 20:36:46.073', 'S', 'Ternera cruza', 1, 13, 5, 1, 1, 0, 0, 2, 2, 1.000000000000000000000000000000);
INSERT INTO public.articulos VALUES (15, 'VAC12CRU', '2023-08-22 20:37:58.76', '2023-08-22 20:37:58.76', 'S', 'Vaquillona 1 -2 años', 1, 14, 5, 1, 1, 0, 0, 2, 2, 1.000000000000000000000000000000);
INSERT INTO public.articulos VALUES (16, 'VAC2MASCRU', '2023-08-22 20:39:04.616', '2023-08-22 20:39:04.617', 'S', 'Vaquillona 2 o más años', 1, 15, 5, 1, 1, 0, 0, 2, 2, 1.000000000000000000000000000000);


--
-- Data for Name: categorias_cliente; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

INSERT INTO public.categorias_cliente VALUES (0, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 1, 'S', 'No asignado');
INSERT INTO public.categorias_cliente VALUES (1, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 1, 'S', 'Frigorifico');
INSERT INTO public.categorias_cliente VALUES (2, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 1, 'S', 'Particular');


--
-- Data for Name: categorias_prov; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

INSERT INTO public.categorias_prov VALUES (0, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 1, 'S', 'No asignado');
INSERT INTO public.categorias_prov VALUES (1, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 1, 'S', 'Consignatario');
INSERT INTO public.categorias_prov VALUES (2, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 1, 'S', 'Transportista');
INSERT INTO public.categorias_prov VALUES (4, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 1, 'S', 'Veterinario');
INSERT INTO public.categorias_prov VALUES (3, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 1, 'S', 'Almacen');


--
-- Data for Name: tipos_titulares; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

INSERT INTO public.tipos_titulares VALUES (1, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 1, 'S', 'Cliente');
INSERT INTO public.tipos_titulares VALUES (2, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 1, 'S', 'Proveedor');
INSERT INTO public.tipos_titulares VALUES (3, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 1, 'S', 'Cliente y proveedor');


--
-- Data for Name: titulares; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

INSERT INTO public.titulares VALUES (1, '2023-08-09 23:59:42.787', '2023-08-09 23:59:42.788', 0, 'S', 'Veterinaria Oriental', 'Veterinaria Oriental', '2321929292029', 'Ruta 5 km429', '-', 'Veterinaria Oriental', 'Veterinaria Oriental', '09578282', 2, 3, 0, 1);


--
-- Data for Name: articulos_x_titular; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

INSERT INTO public.articulos_x_titular VALUES (1, 'INSCARBUNCO', '2023-08-10 00:00:38.047', '2023-08-10 00:00:38.047', 'S', 1, 1);
INSERT INTO public.articulos_x_titular VALUES (2, 'INSNITROMIC', '2023-08-10 21:48:38.843', '2023-08-10 21:48:38.843', 'S', 1, 1);
INSERT INTO public.articulos_x_titular VALUES (3, 'INSPOLIVAC', '2023-08-10 22:09:24.523', '2023-08-10 22:09:24.523', 'S', 1, 1);


--
-- Data for Name: control_trans; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

INSERT INTO public.control_trans VALUES (0, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 'No asignado', 'No asignado', false, 'No asignado', 1);
INSERT INTO public.control_trans VALUES (1, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 'NoRegIgualFecha', 'No se permite en la misma seccion 2 registros con la misma fecha', false, 'Se ha encontrado un error. Usted ya tiene un registro para la fecha de hoy', 1);
INSERT INTO public.control_trans VALUES (2, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 'RegYaUtilizadoContabilidad', 'Registro ya utilizado en otras secciones', false, 'Se ha encontrado un error. Este registro ya se ha utilizado en transacciones posteriores', 1);


--
-- Data for Name: secciones; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

INSERT INTO public.secciones VALUES (1, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 'Estados_Ganado', 'estados_ganado', 'Estados_Ganado', 0, false, NULL, NULL);
INSERT INTO public.secciones VALUES (2, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 'Estados_Stock', 'estados_stock', 'Estados_Stock', 0, false, NULL, NULL);
INSERT INTO public.secciones VALUES (3, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 'Motivos_Sanitarios', 'motivos_sanitarios', 'Motivos_Sanitarios', 0, false, NULL, NULL);
INSERT INTO public.secciones VALUES (4, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 'Numeradores', 'numeradores', 'Numeradores', 0, false, NULL, NULL);
INSERT INTO public.secciones VALUES (5, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 'Motivos_Mov_Stock', 'motivos_mov_stock', 'Motivos_Mov_Stock', 0, false, NULL, NULL);
INSERT INTO public.secciones VALUES (6, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 'Empresas', 'empresas', 'Empresas', 0, false, NULL, NULL);
INSERT INTO public.secciones VALUES (7, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 'Departamentos', 'departamentos', 'Departamentos', 0, false, NULL, NULL);
INSERT INTO public.secciones VALUES (8, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 'Depositos', 'depositos', 'Depositos', 0, false, NULL, NULL);
INSERT INTO public.secciones VALUES (9, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 'Tipos_Ganado', 'tipos_ganado', 'Tipos_Ganado', 0, false, NULL, NULL);
INSERT INTO public.secciones VALUES (10, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 'Categorias_Ganado', 'categorias_ganado', 'Categorias_Ganado', 0, false, NULL, NULL);
INSERT INTO public.secciones VALUES (11, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 'Marcas_Ganado', 'marcas_ganado', 'Marcas_Ganado', 0, false, NULL, NULL);
INSERT INTO public.secciones VALUES (12, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 'Unidades_Stock', 'unidades_stock', 'Unidades_Stock', 0, false, NULL, NULL);
INSERT INTO public.secciones VALUES (13, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 'Usuarios', 'usuarios', 'Usuarios', 0, false, NULL, NULL);
INSERT INTO public.secciones VALUES (14, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 'Articulos', 'articulos', 'Articulos', 0, false, NULL, NULL);
INSERT INTO public.secciones VALUES (15, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 'Usuarios_X_Empresas', 'usuarios_x_empresas', 'Usuarios_X_Empresas', 0, false, NULL, NULL);
INSERT INTO public.secciones VALUES (16, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 'Propiedad_Ganado', 'propiedad_ganado', 'Propiedad_Ganado', 0, false, NULL, NULL);
INSERT INTO public.secciones VALUES (17, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 'Tipos_Toma_Peso', 'tipos_toma_peso', 'Tipos_Toma_Peso', 0, false, NULL, NULL);
INSERT INTO public.secciones VALUES (18, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 'Tipos_Mov_Stock', 'tipos_mov_stock', 'Tipos_Mov_Stock', 0, false, NULL, NULL);
INSERT INTO public.secciones VALUES (19, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 'Cpf_Stockaux', 'cpf_stockaux', 'Cpf_Stockaux', 0, false, NULL, NULL);
INSERT INTO public.secciones VALUES (20, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 'Cpp_Movimiento_Stock', 'cpp_movimiento_stock', 'Cpp_Movimiento_Stock', 0, false, NULL, NULL);
INSERT INTO public.secciones VALUES (21, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 'Cpt_Movimiento_Stock', 'cpt_movimiento_stock', 'Cpt_Movimiento_Stock', 0, false, NULL, NULL);
INSERT INTO public.secciones VALUES (22, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 'Dicoses', 'dicoses', 'Dicoses', 0, false, NULL, NULL);
INSERT INTO public.secciones VALUES (23, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 'View_Empresas_X_Usuario', 'view_empresas_x_usuario', 'View_Empresas_X_Usuario', 0, false, NULL, NULL);
INSERT INTO public.secciones VALUES (24, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 'Roles', 'roles', 'Roles', 0, false, NULL, NULL);
INSERT INTO public.secciones VALUES (25, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 'Monedas', 'monedas', 'Monedas', 0, false, NULL, NULL);
INSERT INTO public.secciones VALUES (26, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 'Tipo_Cambio_Diario', 'tipo_cambio_diario', 'Tipo_Cambio_Diario', 0, false, NULL, NULL);
INSERT INTO public.secciones VALUES (27, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 'Tipos_Titulares', 'tipos_titulares', 'Tipos_Titulares', 0, false, NULL, NULL);
INSERT INTO public.secciones VALUES (28, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 'Categorias_Prov', 'categorias_prov', 'Categorias_Prov', 0, false, NULL, NULL);
INSERT INTO public.secciones VALUES (29, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 'Categorias_Cliente', 'categorias_cliente', 'Categorias_Cliente', 0, false, NULL, NULL);
INSERT INTO public.secciones VALUES (30, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 'Titulares', 'titulares', 'Titulares', 0, false, NULL, NULL);
INSERT INTO public.secciones VALUES (31, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 'Tipos_Costeo', 'tipos_costeo', 'Tipos_Costeo', 0, false, NULL, NULL);
INSERT INTO public.secciones VALUES (32, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 'Cpf_Costos', 'cpf_costos', 'Cpf_Costos', 0, false, NULL, NULL);
INSERT INTO public.secciones VALUES (33, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 'Cpt_Fact_Prov', 'cpt_fact_prov', 'Cpt_Fact_Prov', 0, false, NULL, NULL);
INSERT INTO public.secciones VALUES (34, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 'Acciones', 'acciones', 'Acciones', 0, false, NULL, NULL);
INSERT INTO public.secciones VALUES (35, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 'Permisos_X_Usuario_Seccion', 'permisos_x_usuario_seccion', 'Permisos_X_Usuario_Seccion', 0, false, NULL, NULL);
INSERT INTO public.secciones VALUES (36, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 'Cpt_Facturas', 'cpt_facturas', 'Cpt_Facturas', 0, false, NULL, NULL);
INSERT INTO public.secciones VALUES (37, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 'Control_Trans', 'control_trans', 'Control_Trans', 0, false, NULL, NULL);
INSERT INTO public.secciones VALUES (38, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 'Controles_X_Seccion_Accion', 'controles_x_seccion_accion', 'Controles_X_Seccion_Accion', 0, false, NULL, NULL);
INSERT INTO public.secciones VALUES (39, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 'Permisos_X_Rol_Seccion', 'permisos_x_rol_seccion', 'Permisos_X_Rol_Seccion', 0, false, NULL, NULL);
INSERT INTO public.secciones VALUES (40, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 'Cpf_Log', 'cpf_log', 'Cpf_Log', 0, false, NULL, NULL);
INSERT INTO public.secciones VALUES (41, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 'Secciones', 'secciones', 'Secciones', 0, false, NULL, NULL);
INSERT INTO public.secciones VALUES (42, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 'Cpf_Contaux', 'cpf_contaux', 'Cpf_Contaux', 0, false, NULL, NULL);
INSERT INTO public.secciones VALUES (43, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 'Cpt_Registro_Sanitario', 'cpt_registro_sanitario', 'Cpt_Registro_Sanitario', 0, false, NULL, NULL);
INSERT INTO public.secciones VALUES (44, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 'Cpp_Registro_Sanitario', 'cpp_registro_sanitario', 'Cpp_Registro_Sanitario', 0, false, NULL, NULL);
INSERT INTO public.secciones VALUES (45, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 'Tipo_Articulo', 'tipo_articulo', 'Tipo_Articulo', 0, false, NULL, NULL);
INSERT INTO public.secciones VALUES (46, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 'Articulos_X_Titular', 'articulos_x_titular', 'Articulos_X_Titular', 0, false, NULL, NULL);
INSERT INTO public.secciones VALUES (47, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 'Cpp_Fact_Prov', 'cpp_fact_prov', 'Cpp_Fact_Prov', 0, false, NULL, NULL);
INSERT INTO public.secciones VALUES (0, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 'No asignado', 'No asignado', 'No asignado', 0, false, NULL, NULL);
INSERT INTO public.secciones VALUES (48, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 'Accion_x_lote', 'accion_x_lote', 'Accion_x_lote', 0, true, NULL, NULL);
INSERT INTO public.secciones VALUES (52, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 'Cpt_registro_lluvias', 'cpt_registro_lluvias', 'Cpt_registro_lluvias', 0, false, NULL, NULL);
INSERT INTO public.secciones VALUES (49, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 'Sectores', 'sectores', 'Sectores', 0, false, true, NULL);
INSERT INTO public.secciones VALUES (50, '2023-06-01 19:20:30.451', '2023-06-01 19:20:31.451', 'S', 1, 'Pasturas', 'pasturas', 'Pasturas', 0, false, true, NULL);
INSERT INTO public.secciones VALUES (51, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 'Pasturas_x_sector', 'pasturas_x_sector', 'Pasturas_x_sector', 0, false, NULL, NULL);
INSERT INTO public.secciones VALUES (53, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 'Cpt_evolucion_ganado', 'cpt_evolucion_ganado', 'Cpt_evolucion_ganado', 0, false, NULL, NULL);
INSERT INTO public.secciones VALUES (54, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 'Cpt_pago_fact_prov', 'cpt_pago_fact_prov', 'Cpt_pago_fact_prov', 0, false, NULL, NULL);


--
-- Data for Name: controles_x_seccion_accion; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

INSERT INTO public.controles_x_seccion_accion VALUES (0, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 26, 0, 0, 'No asignado', 1, '');
INSERT INTO public.controles_x_seccion_accion VALUES (1, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 26, 1, 1, '', 1, '');
INSERT INTO public.controles_x_seccion_accion VALUES (2, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 26, 2, 2, '', 1, '');
INSERT INTO public.controles_x_seccion_accion VALUES (3, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 26, 3, 2, '', 1, '');
INSERT INTO public.controles_x_seccion_accion VALUES (4, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 26, 3, 2, '', 3, 'fecha');


--
-- Data for Name: departamentos; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

INSERT INTO public.departamentos VALUES (1, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Montevideo');
INSERT INTO public.departamentos VALUES (2, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Rivera');
INSERT INTO public.departamentos VALUES (3, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Canelones');
INSERT INTO public.departamentos VALUES (4, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Soriano');
INSERT INTO public.departamentos VALUES (5, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Lavalleja');
INSERT INTO public.departamentos VALUES (6, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Tacuarembo');
INSERT INTO public.departamentos VALUES (7, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Artigas');
INSERT INTO public.departamentos VALUES (8, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Salto');
INSERT INTO public.departamentos VALUES (9, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Paysandu');
INSERT INTO public.departamentos VALUES (10, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Rio Negro');
INSERT INTO public.departamentos VALUES (11, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Colonia');
INSERT INTO public.departamentos VALUES (12, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Maldonado');
INSERT INTO public.departamentos VALUES (13, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Rocha');
INSERT INTO public.departamentos VALUES (14, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Flores');
INSERT INTO public.departamentos VALUES (15, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Florida');
INSERT INTO public.departamentos VALUES (16, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Cerro Largo');
INSERT INTO public.departamentos VALUES (17, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Durazno');
INSERT INTO public.departamentos VALUES (18, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'San Jose');
INSERT INTO public.departamentos VALUES (19, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Treinta y Tres');


--
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

INSERT INTO public.roles VALUES (1, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 1, 'S', 'Super-admin');
INSERT INTO public.roles VALUES (2, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 1, 'S', 'Administrador');
INSERT INTO public.roles VALUES (3, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 1, 'S', 'Reporte');
INSERT INTO public.roles VALUES (4, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 1, 'S', 'Operario');


--
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

INSERT INTO public.usuarios VALUES (1, '2023-07-17 01:52:21.753', '2023-07-29 00:41:32.87', 0, 'S', 'florenciarm@gmail.com', '$argon2i$v=19$m=4096,t=3,p=1$UdvVwFAa73vquCbgjzHGnQ$dnRtD9+4xl1k16OHcnoT4Va8pEXkM0K3cog+A40ATjI', '$argon2i$v=19$m=4096,t=3,p=1$9nWjz9m2kb8dowHX47/iJw$qdFgb7YttLj9byqFI0c9mqOMCGRrRS9QbOrllUVslu8', NULL, 'Florencia', 'Rodriguez', false, false, NULL, 1);
INSERT INTO public.usuarios VALUES (2, '2023-07-17 13:52:27.102', '2023-08-24 21:05:04.88', 0, 'S', 'jfernandezberrutti@gmail.com', '$argon2i$v=19$m=4096,t=3,p=1$VPsaxxEMloZJ81Iiu4puPg$ufDTvzcZjgKvFCujcWwn1rCTAeCQQ34prqaYSKcp8AE', '$argon2i$v=19$m=4096,t=3,p=1$H6z0Ayf3Dw+6hVqY39OA8Q$3050RHzx4KlFSZS2PSTnVuQ53SEZ2hPCQ30EdDPdBWs', NULL, 'Juan', 'Fernandez', false, false, NULL, 1);


--
-- Data for Name: usuarios_x_empresas; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

INSERT INTO public.usuarios_x_empresas VALUES (1, 1, '2023-07-17 01:52:21.779', '2023-07-17 01:52:21.779', 'S');
INSERT INTO public.usuarios_x_empresas VALUES (2, 1, '2023-07-17 13:52:27.132', '2023-07-17 13:52:27.133', 'S');


--
-- Data for Name: depositos; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

INSERT INTO public.depositos VALUES (0, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 1, 'S', 'No asignado', 0, '0', '0', '0', 0, 2, 1, 1);
INSERT INTO public.depositos VALUES (2, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 1, 'S', 'Isabelita', 2000, '2323232', '-56', '-32', 1800, 2, 1, 1);
INSERT INTO public.depositos VALUES (1, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 1, 'S', 'Estancia', 2000, '2323232', '-56', '-32', 1800, 2, 1, 1);
INSERT INTO public.depositos VALUES (3, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 1, 'S', 'Puesto', 2000, '2323232', '-56', '-32', 1800, 2, 1, 1);


--
-- Data for Name: estados_stock; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

INSERT INTO public.estados_stock VALUES (1, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Existencias', 'S');
INSERT INTO public.estados_stock VALUES (2, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Muerto', 'S');
INSERT INTO public.estados_stock VALUES (3, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Faeneado', 'S');


--
-- Data for Name: tipos_mov_stock; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

INSERT INTO public.tipos_mov_stock VALUES (1, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Entrada', 1);
INSERT INTO public.tipos_mov_stock VALUES (2, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Salida', -1);
INSERT INTO public.tipos_mov_stock VALUES (3, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Traslado', 0);
INSERT INTO public.tipos_mov_stock VALUES (0, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'no asignado', 0);


--
-- Data for Name: motivos_mov_stock; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

INSERT INTO public.motivos_mov_stock VALUES (1, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Compra de ganado', 'cmpGanado', 1);
INSERT INTO public.motivos_mov_stock VALUES (2, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Venta de ganado', 'vtaGanado', 2);
INSERT INTO public.motivos_mov_stock VALUES (3, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Ajuste de stock en alta', 'ajustkA', 1);
INSERT INTO public.motivos_mov_stock VALUES (4, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Nacimiento', 'ajustkA', 1);
INSERT INTO public.motivos_mov_stock VALUES (5, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Ajuste de stock en baja', 'ajustkB', 2);
INSERT INTO public.motivos_mov_stock VALUES (6, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Traslado sin motivo particular
', 'traslSM', 3);
INSERT INTO public.motivos_mov_stock VALUES (7, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Muerte', 'muerteGanado', 2);
INSERT INTO public.motivos_mov_stock VALUES (12, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'registrosanitario', 'regSanitario', 0);
INSERT INTO public.motivos_mov_stock VALUES (11, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'registropesada', 'regPesada', 0);
INSERT INTO public.motivos_mov_stock VALUES (13, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Rotacion pastura', 'rotPastura', 3);
INSERT INTO public.motivos_mov_stock VALUES (14, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Paricion', 'paricion', 3);
INSERT INTO public.motivos_mov_stock VALUES (15, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Preñez', 'preniez', 3);
INSERT INTO public.motivos_mov_stock VALUES (16, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Destete
', 'destete', 3);
INSERT INTO public.motivos_mov_stock VALUES (17, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Cambio de categoria', 'cmbCategoria', 3);


--
-- Data for Name: sectores; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

INSERT INTO public.sectores VALUES (1, '2023-07-26 21:16:50.976', '2023-07-26 21:16:50.977', 0, 'S', 'Esquina 5', 210, 1, 1, NULL);
INSERT INTO public.sectores VALUES (2, '2023-07-26 21:17:07.659', '2023-07-26 21:17:07.659', 0, 'S', 'Piquete casa', 200, 1, 1, NULL);
INSERT INTO public.sectores VALUES (3, '2023-07-26 21:17:51.908', '2023-07-26 21:17:51.908', 0, 'S', 'Baltasar', 222, 3, 1, NULL);
INSERT INTO public.sectores VALUES (4, '2023-07-26 21:18:10.042', '2023-07-26 21:18:10.043', 0, 'S', 'Las Naranjeras 1', 2312, 3, 1, NULL);
INSERT INTO public.sectores VALUES (5, '2023-07-26 21:18:29.027', '2023-07-26 21:18:29.028', 0, 'S', 'Potrero 1', 232, 2, 1, NULL);
INSERT INTO public.sectores VALUES (6, '2023-07-26 21:53:53.086', '2023-07-26 21:53:53.087', 0, 'S', 'Embarcadero', 200, 1, 1, true);
INSERT INTO public.sectores VALUES (7, '2023-07-26 21:16:50.976', '2023-07-26 21:16:50.976', 0, 'S', 'Almacen', 0, 1, 1, NULL);


--
-- Data for Name: cpf_consumos; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

INSERT INTO public.cpf_consumos VALUES (1, 6, '2023-08-21 23:10:19.305', '2023-08-21 23:10:19.306', 'S', 20.000000000000000000000000000000, 0.000000000000000000000000000000, 0.000000000000000000000000000000, 1, '2023-08-21 03:00:00', 1, 'INSNITROMIC', 4, 1, 7, 1);
INSERT INTO public.cpf_consumos VALUES (2, 6, '2023-08-21 23:10:19.344', '2023-08-21 23:10:19.345', 'S', 4.000000000000000000000000000000, 0.000000000000000000000000000000, 0.000000000000000000000000000000, 1, '2023-08-21 03:00:00', 1, 'INSCARBUNCO', 4, 1, 7, 1);
INSERT INTO public.cpf_consumos VALUES (3, 6, '2023-08-21 23:10:19.37', '2023-08-21 23:10:19.37', 'S', 10.000000000000000000000000000000, 0.000000000000000000000000000000, 0.000000000000000000000000000000, 1, '2023-08-21 03:00:00', 1, 'INSPOLIVAC', 4, 1, 7, 1);
INSERT INTO public.cpf_consumos VALUES (4, 6, '2023-08-21 23:10:19.397', '2023-08-21 23:10:19.398', 'S', 20.000000000000000000000000000000, 0.000000000000000000000000000000, 0.000000000000000000000000000000, 1, '2023-08-21 03:00:00', 1, 'INSNITROMIC', 4, 1, 7, 1);


--
-- Data for Name: monedas; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

INSERT INTO public.monedas VALUES (1, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 1, 'S', 'Peso uruguayo', '$');
INSERT INTO public.monedas VALUES (2, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 1, 'S', 'Dolares americanos', 'U$S');
INSERT INTO public.monedas VALUES (0, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 1, 'S', 'No asignado', '-');


--
-- Data for Name: cpf_contaux; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

INSERT INTO public.cpf_contaux VALUES (2, 5, '2023-08-21 22:59:45.277', '2023-08-21 22:59:45.278', 'S', 114.300000000000000000000000000000, 4469.130000000000000000000000000000, 114.300000000000000000000000000000, '2023-08-21 03:00:00', -1, 1, 'z', 'factprov', 2221, 2, 1, 1, 39.100000000000000000000000000000, NULL, NULL, NULL, 4469.130000000000000000000000000000, 114.300000000000000000000000000000, 114.300000000000000000000000000000);


--
-- Data for Name: tipos_costeo; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

INSERT INTO public.tipos_costeo VALUES (1, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 1, 'S', 'Ultima compra');


--
-- Data for Name: cpf_costos; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

INSERT INTO public.cpf_costos VALUES (1, 6, '2023-08-21 23:10:19.448', '2023-08-21 23:10:19.449', 'S', 1.000000000000000000000000000000, 39.100000000000000000000000000000, 1.000000000000000000000000000000, 1, 'LOT-20230821-6-1', '858000055905030', '2023-08-21 03:00:00', 0, 'VACINVCRU', 1, 1, 1, 39.100000000000000000000000000000);
INSERT INTO public.cpf_costos VALUES (4, 6, '2023-08-21 23:10:19.5', '2023-08-21 23:10:19.501', 'S', 1.136000000000000000000000000000, 44.420000000000000000000000000000, 1.136000000000000000000000000000, 1, 'LOT-20230821-6-1', '858000055905030', '2023-08-21 03:00:00', 0, 'VACINVCRU', 1, 1, 1, 39.100000000000000000000000000000);
INSERT INTO public.cpf_costos VALUES (8, 6, '2023-08-21 23:10:19.59', '2023-08-21 23:10:19.591', 'S', 1.136000000000000000000000000000, 44.420000000000000000000000000000, 1.136000000000000000000000000000, 1, 'LOT-20230821-6-1', '858000055905031', '2023-08-21 03:00:00', 0, 'VACINVCRU', 1, 1, 1, 39.100000000000000000000000000000);
INSERT INTO public.cpf_costos VALUES (2, 6, '2023-08-21 23:10:19.468', '2023-08-21 23:10:19.468', 'S', 1.000000000000000000000000000000, 39.100000000000000000000000000000, 1.000000000000000000000000000000, 1, 'LOT-20230821-6-1', '858000055905030', '2023-08-21 03:00:00', 0, 'VACINVCRU', 1, 1, 1, 39.100000000000000000000000000000);
INSERT INTO public.cpf_costos VALUES (5, 6, '2023-08-21 23:10:19.534', '2023-08-21 23:10:19.535', 'S', 1.000000000000000000000000000000, 39.100000000000000000000000000000, 1.000000000000000000000000000000, 1, 'LOT-20230821-6-1', '858000055905031', '2023-08-21 03:00:00', 0, 'VACINVCRU', 1, 1, 1, 39.100000000000000000000000000000);
INSERT INTO public.cpf_costos VALUES (6, 6, '2023-08-21 23:10:19.553', '2023-08-21 23:10:19.554', 'S', 1.000000000000000000000000000000, 39.100000000000000000000000000000, 1.000000000000000000000000000000, 1, 'LOT-20230821-6-1', '858000055905031', '2023-08-21 03:00:00', 0, 'VACINVCRU', 1, 1, 1, 39.100000000000000000000000000000);
INSERT INTO public.cpf_costos VALUES (3, 6, '2023-08-21 23:10:19.484', '2023-08-21 23:10:19.485', 'S', 0.150000000000000000000000000000, 5.865000000000000000000000000000, 0.150000000000000000000000000000, 1, 'LOT-20230821-6-1', '858000055905030', '2023-08-21 03:00:00', 0, 'VACINVCRU', 1, 1, 1, 39.100000000000000000000000000000);
INSERT INTO public.cpf_costos VALUES (7, 6, '2023-08-21 23:10:19.57', '2023-08-21 23:10:19.571', 'S', 0.150000000000000000000000000000, 5.865000000000000000000000000000, 0.150000000000000000000000000000, 1, 'LOT-20230821-6-1', '858000055905031', '2023-08-21 03:00:00', 0, 'VACINVCRU', 1, 1, 1, 39.100000000000000000000000000000);


--
-- Data for Name: cpf_log; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

INSERT INTO public.cpf_log VALUES (1, '2023-08-21 22:59:45.412', '2023-08-21 22:59:45.413', 'S', 'Registro factura proveedor', '2023-08-21 03:00:00', 2, 5, 33, 1, 'Ingreso de factura proveedor', 'facturaProv', 1);
INSERT INTO public.cpf_log VALUES (2, '2023-08-21 23:10:19.595', '2023-08-21 23:10:19.596', 'S', 'Compra ganado', '2023-08-21 03:00:00', 4, 6, 48, 1, 'Alta masiva de ganado por compra con bano', 'altaCmpMasivaConBano', 1);


--
-- Data for Name: motivos_sanitarios; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

INSERT INTO public.motivos_sanitarios VALUES (0, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'No asignado', 0, NULL, 'mes', NULL, NULL, NULL);
INSERT INTO public.motivos_sanitarios VALUES (3, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Clostridiosis', 1, false, 'dias', 5.000000000000000000000000000000, 'INSPOLIVAC', NULL);
INSERT INTO public.motivos_sanitarios VALUES (2, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Carbunco bacteridiano ', 1, true, 'mensual', 2.000000000000000000000000000000, 'INSCARBUNCO', NULL);
INSERT INTO public.motivos_sanitarios VALUES (1, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Parasitos ext. - Garrapata', 21, true, 'dias', 10.000000000000000000000000000000, 'INSNITROMIC', NULL);
INSERT INTO public.motivos_sanitarios VALUES (4, '2023-07-24 21:09:32.991', '2023-07-24 21:09:32.991', 'S', 'Parasitos Internos', 1, false, 'dias', 10.000000000000000000000000000000, 'INSNITROMIC', NULL);
INSERT INTO public.motivos_sanitarios VALUES (5, '2023-08-22 14:02:32.73', '2023-08-22 14:02:46.195', 'N', 'weqwe', NULL, false, 'semanal', NULL, 'INSCARBUNCO', NULL);
INSERT INTO public.motivos_sanitarios VALUES (6, '2023-08-22 14:07:13.831', '2023-08-22 14:07:13.832', 'S', 'Test preñez', 0, true, 'mensual', 0.000000000000000000000000000000, 'NOASIG', NULL);


--
-- Data for Name: cpt_registro_sanitario; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

INSERT INTO public.cpt_registro_sanitario VALUES (4, 6, '2023-08-21 23:10:19.284', '2023-08-21 23:10:19.285', 'S', 837.000000000000000000000000000000, 950.000000000000000000000000000000, 2.000000000000000000000000000000, '2023-08-21 03:00:00', 1, 1, true, NULL);
INSERT INTO public.cpt_registro_sanitario VALUES (5, 6, '2023-08-21 23:10:19.332', '2023-08-21 23:10:19.332', 'S', 837.000000000000000000000000000000, 950.000000000000000000000000000000, 2.000000000000000000000000000000, '2023-08-21 03:00:00', 2, 1, true, NULL);
INSERT INTO public.cpt_registro_sanitario VALUES (6, 6, '2023-08-21 23:10:19.36', '2023-08-21 23:10:19.36', 'S', 837.000000000000000000000000000000, 950.000000000000000000000000000000, 2.000000000000000000000000000000, '2023-08-21 03:00:00', 3, 1, true, NULL);
INSERT INTO public.cpt_registro_sanitario VALUES (7, 6, '2023-08-21 23:10:19.389', '2023-08-21 23:10:19.389', 'S', 837.000000000000000000000000000000, 950.000000000000000000000000000000, 2.000000000000000000000000000000, '2023-08-21 03:00:00', 4, 1, true, NULL);


--
-- Data for Name: cpf_registro_sanitario; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

INSERT INTO public.cpf_registro_sanitario VALUES (1, 6, '2023-08-21 23:10:19.436', '2023-08-21 23:10:19.437', 'S', 1.000000000000000000000000000000, 419.000000000000000000000000000000, 475.567502986857800000000000000000, '2023-08-21 03:00:00', 'LOT-20230821-6-1', '858000055905030', 'VACINVCRU', 1, 1, 1, 7);
INSERT INTO public.cpf_registro_sanitario VALUES (2, 6, '2023-08-21 23:10:19.461', '2023-08-21 23:10:19.462', 'S', 1.000000000000000000000000000000, 419.000000000000000000000000000000, 475.567502986857800000000000000000, '2023-08-21 03:00:00', 'LOT-20230821-6-1', '858000055905030', 'VACINVCRU', 1, 1, 1, 7);
INSERT INTO public.cpf_registro_sanitario VALUES (3, 6, '2023-08-21 23:10:19.478', '2023-08-21 23:10:19.478', 'S', 1.000000000000000000000000000000, 419.000000000000000000000000000000, 475.567502986857800000000000000000, '2023-08-21 03:00:00', 'LOT-20230821-6-1', '858000055905030', 'VACINVCRU', 1, 1, 1, 7);
INSERT INTO public.cpf_registro_sanitario VALUES (4, 6, '2023-08-21 23:10:19.494', '2023-08-21 23:10:19.495', 'S', 1.000000000000000000000000000000, 419.000000000000000000000000000000, 475.567502986857800000000000000000, '2023-08-21 03:00:00', 'LOT-20230821-6-1', '858000055905030', 'VACINVCRU', 1, 1, 1, 7);
INSERT INTO public.cpf_registro_sanitario VALUES (5, 6, '2023-08-21 23:10:19.527', '2023-08-21 23:10:19.528', 'S', 1.000000000000000000000000000000, 418.000000000000000000000000000000, 474.432497013142200000000000000000, '2023-08-21 03:00:00', 'LOT-20230821-6-1', '858000055905031', 'VACINVCRU', 1, 1, 1, 7);
INSERT INTO public.cpf_registro_sanitario VALUES (6, 6, '2023-08-21 23:10:19.547', '2023-08-21 23:10:19.547', 'S', 1.000000000000000000000000000000, 418.000000000000000000000000000000, 474.432497013142200000000000000000, '2023-08-21 03:00:00', 'LOT-20230821-6-1', '858000055905031', 'VACINVCRU', 1, 1, 1, 7);
INSERT INTO public.cpf_registro_sanitario VALUES (7, 6, '2023-08-21 23:10:19.564', '2023-08-21 23:10:19.564', 'S', 1.000000000000000000000000000000, 418.000000000000000000000000000000, 474.432497013142200000000000000000, '2023-08-21 03:00:00', 'LOT-20230821-6-1', '858000055905031', 'VACINVCRU', 1, 1, 1, 7);
INSERT INTO public.cpf_registro_sanitario VALUES (8, 6, '2023-08-21 23:10:19.582', '2023-08-21 23:10:19.582', 'S', 1.000000000000000000000000000000, 418.000000000000000000000000000000, 474.432497013142200000000000000000, '2023-08-21 03:00:00', 'LOT-20230821-6-1', '858000055905031', 'VACINVCRU', 1, 1, 1, 7);


--
-- Data for Name: cpf_stockaux; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

INSERT INTO public.cpf_stockaux VALUES (2, 5, '2023-08-21 22:59:45.33', '2023-08-21 22:59:45.33', 'S', 100.000000000000000000000000000000, 0.000000000000000000000000000000, 0.000000000000000000000000000000, 1, '0', '0', '2023-08-21 03:00:00', 1, 'INSCARBUNCO', 4, 1, 1, 7);
INSERT INTO public.cpf_stockaux VALUES (3, 5, '2023-08-21 22:59:45.363', '2023-08-21 22:59:45.363', 'S', 500.000000000000000000000000000000, 0.000000000000000000000000000000, 0.000000000000000000000000000000, 1, '0', '0', '2023-08-21 03:00:00', 1, 'INSNITROMIC', 4, 1, 1, 7);
INSERT INTO public.cpf_stockaux VALUES (4, 5, '2023-08-21 22:59:45.401', '2023-08-21 22:59:45.401', 'S', 250.000000000000000000000000000000, 0.000000000000000000000000000000, 0.000000000000000000000000000000, 1, '0', '0', '2023-08-21 03:00:00', 1, 'INSPOLIVAC', 4, 1, 1, 7);
INSERT INTO public.cpf_stockaux VALUES (5, 6, '2023-08-21 23:10:19.319', '2023-08-21 23:10:19.32', 'S', 20.000000000000000000000000000000, 0.000000000000000000000000000000, 0.000000000000000000000000000000, -1, '0', '0', '2023-08-21 03:00:00', 1, 'INSNITROMIC', 4, 1, 1, 7);
INSERT INTO public.cpf_stockaux VALUES (6, 6, '2023-08-21 23:10:19.352', '2023-08-21 23:10:19.353', 'S', 4.000000000000000000000000000000, 0.000000000000000000000000000000, 0.000000000000000000000000000000, -1, '0', '0', '2023-08-21 03:00:00', 1, 'INSCARBUNCO', 4, 1, 1, 7);
INSERT INTO public.cpf_stockaux VALUES (7, 6, '2023-08-21 23:10:19.382', '2023-08-21 23:10:19.383', 'S', 10.000000000000000000000000000000, 0.000000000000000000000000000000, 0.000000000000000000000000000000, -1, '0', '0', '2023-08-21 03:00:00', 1, 'INSPOLIVAC', 4, 1, 1, 7);
INSERT INTO public.cpf_stockaux VALUES (8, 6, '2023-08-21 23:10:19.405', '2023-08-21 23:10:19.405', 'S', 20.000000000000000000000000000000, 0.000000000000000000000000000000, 0.000000000000000000000000000000, -1, '0', '0', '2023-08-21 03:00:00', 1, 'INSNITROMIC', 4, 1, 1, 7);
INSERT INTO public.cpf_stockaux VALUES (9, 6, '2023-08-21 23:10:19.422', '2023-08-21 23:10:19.422', 'S', 1.000000000000000000000000000000, 419.000000000000000000000000000000, 475.567502986857800000000000000000, 1, 'LOT-20230821-6-1', '858000055905030', '2023-08-21 03:00:00', 1, 'VACINVCRU', 1, 1, 1, 6);
INSERT INTO public.cpf_stockaux VALUES (10, 6, '2023-08-21 23:10:19.515', '2023-08-21 23:10:19.515', 'S', 1.000000000000000000000000000000, 418.000000000000000000000000000000, 474.432497013142200000000000000000, 1, 'LOT-20230821-6-1', '858000055905031', '2023-08-21 03:00:00', 1, 'VACINVCRU', 1, 1, 1, 6);


--
-- Data for Name: cpp_fact_prov; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

INSERT INTO public.cpp_fact_prov VALUES (2, 5, '2023-08-21 22:59:45.31', '2023-08-21 22:59:45.31', 'S', 1, 7.500000000000000000000000000000, 7.500000000000000000000000000000, 293.250000000000000000000000000000, 7.500000000000000000000000000000, 7.500000000000000000000000000000, 293.250000000000000000000000000000, 7.500000000000000000000000000000, '2023-08-21 03:00:00', 'z', 2221, 2, 1, 1, 39.100000000000000000000000000000, 'factprov', 'INSCARBUNCO', NULL, NULL, 0.000000000000000000000000000000, 0.000000000000000000000000000000, 0.000000000000000000000000000000, 0.000000000000000000000000000000, 0.000000000000000000000000000000, 0.000000000000000000000000000000, 0.000000000000000000000000000000, 0.000000000000000000000000000000, 0.000000000000000000000000000000, 100.000000000000000000000000000000);
INSERT INTO public.cpp_fact_prov VALUES (3, 5, '2023-08-21 22:59:45.342', '2023-08-21 22:59:45.343', 'S', 1, 50.000000000000000000000000000000, 50.000000000000000000000000000000, 1955.000000000000000000000000000000, 50.000000000000000000000000000000, 50.000000000000000000000000000000, 1955.000000000000000000000000000000, 50.000000000000000000000000000000, '2023-08-21 03:00:00', 'z', 2221, 2, 1, 1, 39.100000000000000000000000000000, 'factprov', 'INSNITROMIC', NULL, NULL, 0.000000000000000000000000000000, 0.000000000000000000000000000000, 0.000000000000000000000000000000, 0.000000000000000000000000000000, 0.000000000000000000000000000000, 0.000000000000000000000000000000, 0.000000000000000000000000000000, 0.000000000000000000000000000000, 0.000000000000000000000000000000, 500.000000000000000000000000000000);
INSERT INTO public.cpp_fact_prov VALUES (4, 5, '2023-08-21 22:59:45.382', '2023-08-21 22:59:45.383', 'S', 1, 56.800000000000000000000000000000, 56.800000000000000000000000000000, 2220.880000000000000000000000000000, 56.800000000000000000000000000000, 56.800000000000000000000000000000, 2220.880000000000000000000000000000, 56.800000000000000000000000000000, '2023-08-21 03:00:00', 'z', 2221, 2, 1, 1, 39.100000000000000000000000000000, 'factprov', 'INSPOLIVAC', NULL, NULL, 0.000000000000000000000000000000, 0.000000000000000000000000000000, 0.000000000000000000000000000000, 0.000000000000000000000000000000, 0.000000000000000000000000000000, 0.000000000000000000000000000000, 0.000000000000000000000000000000, 0.000000000000000000000000000000, 0.000000000000000000000000000000, 250.000000000000000000000000000000);


--
-- Data for Name: cpp_facturas; Type: TABLE DATA; Schema: public; Owner: mariaelena
--



--
-- Data for Name: cpp_ingresoromaneo; Type: TABLE DATA; Schema: public; Owner: mariaelena
--



--
-- Data for Name: cpp_movimiento_stock; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

INSERT INTO public.cpp_movimiento_stock VALUES (1, 6, '2023-08-21 23:10:19.412', '2023-08-21 23:10:19.412', 'S', 1.000000000000000000000000000000, 419.000000000000000000000000000000, 475.570000000000000000000000000000, '2023-08-21 03:00:00', 'LOT-20230821-6-1', '858000055905030', 'VACINVCRU', 1);
INSERT INTO public.cpp_movimiento_stock VALUES (2, 6, '2023-08-21 23:10:19.506', '2023-08-21 23:10:19.506', 'S', 1.000000000000000000000000000000, 418.000000000000000000000000000000, 474.430000000000000000000000000000, '2023-08-21 03:00:00', 'LOT-20230821-6-1', '858000055905031', 'VACINVCRU', 1);


--
-- Data for Name: cpp_registro_sanitario; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

INSERT INTO public.cpp_registro_sanitario VALUES (1, 6, '2023-08-21 23:10:19.428', '2023-08-21 23:10:19.428', 'S', 1.000000000000000000000000000000, 419.000000000000000000000000000000, 475.567502986857800000000000000000, '2023-08-21 03:00:00', 'LOT-20230821-6-1', '858000055905030', 'VACINVCRU', 1, 1, 7);
INSERT INTO public.cpp_registro_sanitario VALUES (2, 6, '2023-08-21 23:10:19.456', '2023-08-21 23:10:19.457', 'S', 1.000000000000000000000000000000, 419.000000000000000000000000000000, 475.567502986857800000000000000000, '2023-08-21 03:00:00', 'LOT-20230821-6-1', '858000055905030', 'VACINVCRU', 1, 4, 7);
INSERT INTO public.cpp_registro_sanitario VALUES (3, 6, '2023-08-21 23:10:19.473', '2023-08-21 23:10:19.473', 'S', 1.000000000000000000000000000000, 419.000000000000000000000000000000, 475.567502986857800000000000000000, '2023-08-21 03:00:00', 'LOT-20230821-6-1', '858000055905030', 'VACINVCRU', 1, 2, 7);
INSERT INTO public.cpp_registro_sanitario VALUES (4, 6, '2023-08-21 23:10:19.489', '2023-08-21 23:10:19.49', 'S', 1.000000000000000000000000000000, 419.000000000000000000000000000000, 475.567502986857800000000000000000, '2023-08-21 03:00:00', 'LOT-20230821-6-1', '858000055905030', 'VACINVCRU', 1, 3, 7);
INSERT INTO public.cpp_registro_sanitario VALUES (5, 6, '2023-08-21 23:10:19.521', '2023-08-21 23:10:19.521', 'S', 1.000000000000000000000000000000, 418.000000000000000000000000000000, 474.432497013142200000000000000000, '2023-08-21 03:00:00', 'LOT-20230821-6-1', '858000055905031', 'VACINVCRU', 1, 1, 7);
INSERT INTO public.cpp_registro_sanitario VALUES (6, 6, '2023-08-21 23:10:19.541', '2023-08-21 23:10:19.541', 'S', 1.000000000000000000000000000000, 418.000000000000000000000000000000, 474.432497013142200000000000000000, '2023-08-21 03:00:00', 'LOT-20230821-6-1', '858000055905031', 'VACINVCRU', 1, 4, 7);
INSERT INTO public.cpp_registro_sanitario VALUES (7, 6, '2023-08-21 23:10:19.559', '2023-08-21 23:10:19.559', 'S', 1.000000000000000000000000000000, 418.000000000000000000000000000000, 474.432497013142200000000000000000, '2023-08-21 03:00:00', 'LOT-20230821-6-1', '858000055905031', 'VACINVCRU', 1, 2, 7);
INSERT INTO public.cpp_registro_sanitario VALUES (8, 6, '2023-08-21 23:10:19.575', '2023-08-21 23:10:19.576', 'S', 1.000000000000000000000000000000, 418.000000000000000000000000000000, 474.432497013142200000000000000000, '2023-08-21 03:00:00', 'LOT-20230821-6-1', '858000055905031', 'VACINVCRU', 1, 3, 7);


--
-- Data for Name: cpt_evolucion_ganado; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

INSERT INTO public.cpt_evolucion_ganado VALUES (1, '2023-08-09 23:23:24.026', '2023-08-09 23:23:24.026', 1, 'S', 'TERNERACRU', 'VAC12CRU', 0.000000000000000000000000000000);
INSERT INTO public.cpt_evolucion_ganado VALUES (0, '2023-08-09 23:23:24.026', '2023-08-09 23:23:24.026', 1, 'S', 'NOASIG', 'NOASIG', 0.000000000000000000000000000000);


--
-- Data for Name: cpt_fact_prov; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

INSERT INTO public.cpt_fact_prov VALUES (2, 5, '2023-08-21 22:59:45.204', '2023-08-21 22:59:45.204', 'S', 114.300000000000000000000000000000, 4469.130000000000000000000000000000, 114.300000000000000000000000000000, '2023-08-21 03:00:00', -1, 'z', 2221, 2, 1, 1, 'factprov', 39.100000000000000000000000000000, 4469.130000000000000000000000000000, 114.300000000000000000000000000000, 114.300000000000000000000000000000, NULL, 0.000000000000000000000000000000, 0.000000000000000000000000000000, 0.000000000000000000000000000000, 0.000000000000000000000000000000, 0.000000000000000000000000000000, 0.000000000000000000000000000000, 0.000000000000000000000000000000, 0.000000000000000000000000000000, 0.000000000000000000000000000000, NULL, NULL, NULL);


--
-- Data for Name: cpt_facturas; Type: TABLE DATA; Schema: public; Owner: mariaelena
--



--
-- Data for Name: cpt_ingresoromaneo; Type: TABLE DATA; Schema: public; Owner: mariaelena
--



--
-- Data for Name: dicoses; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

INSERT INTO public.dicoses VALUES (1, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'La Maria Elena SRL', '130563511', NULL);
INSERT INTO public.dicoses VALUES (0, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'No asignado', '0', NULL);
INSERT INTO public.dicoses VALUES (2, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Diego Fernandez', 'FF0563554', NULL);
INSERT INTO public.dicoses VALUES (3, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Juan Ignacion Fernandez', 'FF0126871', NULL);


--
-- Data for Name: propiedad_ganado; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

INSERT INTO public.propiedad_ganado VALUES (1, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Propio');
INSERT INTO public.propiedad_ganado VALUES (2, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Ajeno');
INSERT INTO public.propiedad_ganado VALUES (0, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'No asignado');


--
-- Data for Name: tipos_toma_peso; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

INSERT INTO public.tipos_toma_peso VALUES (1, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Real');
INSERT INTO public.tipos_toma_peso VALUES (2, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Promedio total kg');
INSERT INTO public.tipos_toma_peso VALUES (3, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Promedio por muestra');
INSERT INTO public.tipos_toma_peso VALUES (0, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'No asignado');


--
-- Data for Name: cpt_movimiento_stock; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

INSERT INTO public.cpt_movimiento_stock VALUES (4, 6, '2023-08-21 23:10:19.272', '2023-08-21 23:10:19.272', 'S', 837.000000000000000000000000000000, 950.000000000000000000000000000000, 2.000000000000000000000000000000, '2023-08-21 03:00:00', 'A', '232312', 1, 1, 'VACINVCRU', 1, 1, 1, true, 'LOT-20230821-6-1', NULL);


--
-- Data for Name: estado_pago; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

INSERT INTO public.estado_pago VALUES (0, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'No asignado');
INSERT INTO public.estado_pago VALUES (1, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Pendiente');
INSERT INTO public.estado_pago VALUES (2, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Pago');


--
-- Data for Name: cpt_pago_fact_prov; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

INSERT INTO public.cpt_pago_fact_prov VALUES (1, 4, '2023-08-21 22:50:13.36', '2023-08-21 22:50:13.361', 'S', 114.300000000000000000000000000000, 4469.130000000000000000000000000000, 114.300000000000000000000000000000, '2023-08-21 03:00:00', -1, 'A', 1233, 2, 1, 1, 39.100000000000000000000000000000, 'factprov', 1);
INSERT INTO public.cpt_pago_fact_prov VALUES (2, 5, '2023-08-21 22:59:45.296', '2023-08-21 22:59:45.297', 'S', 114.300000000000000000000000000000, 4469.130000000000000000000000000000, 114.300000000000000000000000000000, '2023-08-21 03:00:00', -1, 'z', 2221, 2, 1, 1, 39.100000000000000000000000000000, 'factprov', 2);


--
-- Data for Name: cpt_parametros_x_fecha; Type: TABLE DATA; Schema: public; Owner: mariaelena
--



--
-- Data for Name: cpt_recaravaneo; Type: TABLE DATA; Schema: public; Owner: mariaelena
--



--
-- Data for Name: cpt_registro_lluvias; Type: TABLE DATA; Schema: public; Owner: mariaelena
--



--
-- Data for Name: tipos_gasto; Type: TABLE DATA; Schema: public; Owner: mariaelena
--



--
-- Data for Name: cpt_registros_gasto; Type: TABLE DATA; Schema: public; Owner: mariaelena
--



--
-- Data for Name: estados_ganado; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

INSERT INTO public.estados_ganado VALUES (1, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Propio');
INSERT INTO public.estados_ganado VALUES (2, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Ajeno');
INSERT INTO public.estados_ganado VALUES (0, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'No asignado');


--
-- Data for Name: numeradores; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

INSERT INTO public.numeradores VALUES (1, '2023-06-01 19:20:30.451', '2023-08-21 23:10:19.254', 'S', 'nro_trans', 6);


--
-- Data for Name: pasturas; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

INSERT INTO public.pasturas VALUES (1, '2023-07-26 21:34:38.314', '2023-07-26 21:34:38.315', 0, 'S', 'Ryegrass', 730);


--
-- Data for Name: pasturas_x_sector; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

INSERT INTO public.pasturas_x_sector VALUES (1, '2023-07-26 23:46:43.95', '2023-07-26 23:46:43.951', 0, 'S', 'asdsadasd', 'sdasdasdas', '2023-07-26 15:00:00', '2023-07-27 15:00:00', '2023-07-14 15:00:00', '2023-07-07 15:00:00', 1, 1, 1);


--
-- Data for Name: permisos_x_rol_seccion; Type: TABLE DATA; Schema: public; Owner: mariaelena
--



--
-- Data for Name: permisos_x_usuario_seccion; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

INSERT INTO public.permisos_x_usuario_seccion VALUES (1, '2023-07-17 03:00:00', '2023-07-17 03:00:00', 'S', 2, 26, 1, 1);
INSERT INTO public.permisos_x_usuario_seccion VALUES (2, '2023-07-17 03:00:00', '2023-07-17 03:00:00', 'S', 2, 26, 4, 1);
INSERT INTO public.permisos_x_usuario_seccion VALUES (3, '2023-07-17 03:00:00', '2023-07-17 03:00:00', 'S', 2, 13, 1, 1);
INSERT INTO public.permisos_x_usuario_seccion VALUES (4, '2023-07-17 03:00:00', '2023-07-17 03:00:00', 'S', 2, 13, 4, 1);
INSERT INTO public.permisos_x_usuario_seccion VALUES (5, '2023-07-17 03:00:00', '2023-07-17 03:00:00', 'S', 2, 24, 4, 1);
INSERT INTO public.permisos_x_usuario_seccion VALUES (6, '2023-07-17 03:00:00', '2023-07-17 03:00:00', 'S', 2, 24, 1, 1);
INSERT INTO public.permisos_x_usuario_seccion VALUES (7, '2023-07-17 03:00:00', '2023-07-17 03:00:00', 'S', 2, 35, 1, 1);
INSERT INTO public.permisos_x_usuario_seccion VALUES (8, '2023-07-17 03:00:00', '2023-07-17 03:00:00', 'S', 2, 35, 4, 1);
INSERT INTO public.permisos_x_usuario_seccion VALUES (9, '2023-07-19 18:58:12.52', '2023-07-19 18:58:12.521', 'S', 2, 30, 4, 0);
INSERT INTO public.permisos_x_usuario_seccion VALUES (10, '2023-07-19 18:59:01.447', '2023-07-19 18:59:01.448', 'S', 2, 30, 1, 0);
INSERT INTO public.permisos_x_usuario_seccion VALUES (11, '2023-07-19 20:07:58.874', '2023-07-19 20:07:58.874', 'S', 2, 30, 3, 0);
INSERT INTO public.permisos_x_usuario_seccion VALUES (12, '2023-07-19 20:08:15.169', '2023-07-19 20:08:15.17', 'S', 2, 30, 2, 0);
INSERT INTO public.permisos_x_usuario_seccion VALUES (13, '2023-07-19 21:44:41.299', '2023-07-19 21:44:41.3', 'S', 2, 10, 4, 0);
INSERT INTO public.permisos_x_usuario_seccion VALUES (14, '2023-07-19 21:44:52.868', '2023-07-19 21:44:52.869', 'S', 2, 10, 1, 0);
INSERT INTO public.permisos_x_usuario_seccion VALUES (15, '2023-07-19 21:45:08.664', '2023-07-19 21:45:08.664', 'S', 2, 11, 4, 0);
INSERT INTO public.permisos_x_usuario_seccion VALUES (16, '2023-07-19 21:45:17.263', '2023-07-19 21:45:17.264', 'S', 2, 11, 1, 0);
INSERT INTO public.permisos_x_usuario_seccion VALUES (17, '2023-07-19 21:45:25.118', '2023-07-19 21:45:25.118', 'S', 2, 14, 4, 0);
INSERT INTO public.permisos_x_usuario_seccion VALUES (18, '2023-07-19 21:45:33.936', '2023-07-19 21:45:33.936', 'S', 2, 14, 1, 0);
INSERT INTO public.permisos_x_usuario_seccion VALUES (19, '2023-07-20 22:57:16.626', '2023-07-20 22:57:16.626', 'S', 2, 6, 4, 0);
INSERT INTO public.permisos_x_usuario_seccion VALUES (20, '2023-07-20 22:57:28.754', '2023-07-20 22:57:28.755', 'S', 2, 6, 1, 0);
INSERT INTO public.permisos_x_usuario_seccion VALUES (21, '2023-07-20 22:57:38.071', '2023-07-20 22:57:38.072', 'S', 2, 8, 4, 0);
INSERT INTO public.permisos_x_usuario_seccion VALUES (22, '2023-07-20 22:58:50.843', '2023-07-20 22:58:50.844', 'S', 2, 3, 4, 0);
INSERT INTO public.permisos_x_usuario_seccion VALUES (23, '2023-07-20 22:58:57.05', '2023-07-20 22:58:57.05', 'S', 2, 3, 1, 0);
INSERT INTO public.permisos_x_usuario_seccion VALUES (24, '2023-07-22 16:56:28.958', '2023-07-22 16:56:28.958', 'S', 2, 6, 3, 0);
INSERT INTO public.permisos_x_usuario_seccion VALUES (25, '2023-07-24 15:23:28.263', '2023-07-24 15:23:28.264', 'S', 2, 8, 1, 0);
INSERT INTO public.permisos_x_usuario_seccion VALUES (26, '2023-07-24 20:20:58.407', '2023-07-24 20:20:58.407', 'S', 2, 22, 1, 0);
INSERT INTO public.permisos_x_usuario_seccion VALUES (27, '2023-07-24 20:21:24.271', '2023-07-24 20:21:24.272', 'S', 2, 22, 4, 0);
INSERT INTO public.permisos_x_usuario_seccion VALUES (28, '2023-07-24 20:21:32.228', '2023-07-24 20:21:32.229', 'S', 2, 22, 3, 0);
INSERT INTO public.permisos_x_usuario_seccion VALUES (29, '2023-07-24 20:40:26.676', '2023-07-24 20:40:26.677', 'S', 2, 3, 3, 0);
INSERT INTO public.permisos_x_usuario_seccion VALUES (30, '2023-07-26 20:59:59.083', '2023-07-26 20:59:59.084', 'S', 2, 49, 1, 0);
INSERT INTO public.permisos_x_usuario_seccion VALUES (31, '2023-07-26 21:00:08.297', '2023-07-26 21:00:08.297', 'S', 2, 49, 4, 0);
INSERT INTO public.permisos_x_usuario_seccion VALUES (32, '2023-07-26 21:06:56.506', '2023-07-26 21:06:56.507', 'S', 2, 8, 3, 0);
INSERT INTO public.permisos_x_usuario_seccion VALUES (33, '2023-07-26 21:30:14.104', '2023-07-26 21:30:14.104', 'S', 2, 50, 1, 0);
INSERT INTO public.permisos_x_usuario_seccion VALUES (34, '2023-07-26 21:30:23.867', '2023-07-26 21:30:23.868', 'S', 2, 50, 4, 0);
INSERT INTO public.permisos_x_usuario_seccion VALUES (35, '2023-07-26 21:30:33.399', '2023-07-26 21:30:33.399', 'S', 2, 50, 3, 0);
INSERT INTO public.permisos_x_usuario_seccion VALUES (36, '2023-07-26 23:05:09.798', '2023-07-26 23:05:09.798', 'S', 2, 51, 4, 0);
INSERT INTO public.permisos_x_usuario_seccion VALUES (37, '2023-07-26 23:05:19.57', '2023-07-26 23:05:19.57', 'S', 2, 51, 1, 0);
INSERT INTO public.permisos_x_usuario_seccion VALUES (38, '2023-07-26 23:05:28.083', '2023-07-26 23:05:28.083', 'S', 2, 51, 3, 0);
INSERT INTO public.permisos_x_usuario_seccion VALUES (39, '2023-07-27 00:12:42.271', '2023-07-27 00:12:42.272', 'S', 2, 52, 4, 0);
INSERT INTO public.permisos_x_usuario_seccion VALUES (40, '2023-07-27 00:12:53.483', '2023-07-27 00:12:53.483', 'S', 2, 52, 1, 0);
INSERT INTO public.permisos_x_usuario_seccion VALUES (41, '2023-08-09 23:25:31.422', '2023-08-09 23:25:31.423', 'S', 2, 14, 2, 0);
INSERT INTO public.permisos_x_usuario_seccion VALUES (42, '2023-08-09 23:25:31.974', '2023-08-09 23:25:31.975', 'S', 2, 14, 2, 0);
INSERT INTO public.permisos_x_usuario_seccion VALUES (43, '2023-08-09 23:34:02.202', '2023-08-09 23:34:02.203', 'S', 2, 14, 2, 0);
INSERT INTO public.permisos_x_usuario_seccion VALUES (44, '2023-08-09 23:38:18.827', '2023-08-09 23:38:18.827', 'S', 2, 14, 2, 0);
INSERT INTO public.permisos_x_usuario_seccion VALUES (45, '2023-08-10 00:00:07.945', '2023-08-10 00:00:07.946', 'S', 2, 46, 1, 0);
INSERT INTO public.permisos_x_usuario_seccion VALUES (46, '2023-08-10 00:00:17.615', '2023-08-10 00:00:17.615', 'S', 2, 46, 2, 0);
INSERT INTO public.permisos_x_usuario_seccion VALUES (47, '2023-08-10 21:36:49.376', '2023-08-10 21:36:49.377', 'S', 2, 14, 3, 0);
INSERT INTO public.permisos_x_usuario_seccion VALUES (48, '2023-08-10 21:47:53.062', '2023-08-10 21:47:53.063', 'S', 2, 46, 1, 0);
INSERT INTO public.permisos_x_usuario_seccion VALUES (49, '2023-08-10 21:48:19.97', '2023-08-10 21:48:19.97', 'S', 2, 46, 4, 0);
INSERT INTO public.permisos_x_usuario_seccion VALUES (50, '2023-08-22 21:33:13.696', '2023-08-22 21:33:13.697', 'S', 2, 53, 1, 0);
INSERT INTO public.permisos_x_usuario_seccion VALUES (51, '2023-08-22 21:33:24.419', '2023-08-22 21:33:24.42', 'S', 2, 53, 2, 0);
INSERT INTO public.permisos_x_usuario_seccion VALUES (52, '2023-08-22 21:33:34.548', '2023-08-22 21:33:34.548', 'S', 2, 53, 3, 0);
INSERT INTO public.permisos_x_usuario_seccion VALUES (53, '2023-08-22 21:33:45.347', '2023-08-22 21:33:45.348', 'S', 2, 53, 4, 0);
INSERT INTO public.permisos_x_usuario_seccion VALUES (54, '2023-08-23 21:46:27.152', '2023-08-23 21:46:27.153', 'S', 2, 54, 3, 0);
INSERT INTO public.permisos_x_usuario_seccion VALUES (55, '2023-08-23 21:46:37.902', '2023-08-23 21:46:37.903', 'S', 2, 54, 4, 0);
INSERT INTO public.permisos_x_usuario_seccion VALUES (56, '2023-08-24 21:04:55.515', '2023-08-24 21:04:55.515', 'S', 2, 10, 3, 0);


--
-- Data for Name: tipo_cambio_diario; Type: TABLE DATA; Schema: public; Owner: mariaelena
--

INSERT INTO public.tipo_cambio_diario VALUES (1, '2023-08-10 00:01:31.731', '2023-08-10 00:01:31.732', 0, 'S', 39.100000000000000000000000000000, '2023-08-10 00:01:31.714', 2);
INSERT INTO public.tipo_cambio_diario VALUES (2, '2023-08-21 22:42:56.293', '2023-08-21 22:42:56.294', 0, 'S', 39.100000000000000000000000000000, '2023-08-21 22:42:56.27', 2);


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
-- PostgreSQL database dump complete
--




INSERT ARTICULOS
