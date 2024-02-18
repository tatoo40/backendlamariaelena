INSERT INTO public.dicoses VALUES (1, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'La Maria Elena SRL', '130563511', NULL);
INSERT INTO public.dicoses VALUES (0, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'No asignado', '0', NULL);
INSERT INTO public.dicoses VALUES (2, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Diego Fernandez', 'FF0563554', NULL);
INSERT INTO public.dicoses VALUES (3, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Juan Ignacion Fernandez', 'FF0126871', NULL);

INSERT INTO public.empresas VALUES (1, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 1, 'S', 'La Maria Elena SRL', 'La Maria Elena SRL', '217965240018', 'Avenida del sol 2365', 'jifb@gmail.com', '094 099 400', 'Ninguna observacion');

INSERT INTO public.propiedad_ganado VALUES (1, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Propio');
INSERT INTO public.propiedad_ganado VALUES (2, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Ajeno');
INSERT INTO public.propiedad_ganado VALUES (0, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'No asignado');

INSERT INTO public.roles VALUES (1, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 1, 'S', 'Super-admin');
INSERT INTO public.roles VALUES (2, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 1, 'S', 'Administrador');
INSERT INTO public.roles VALUES (3, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 1, 'S', 'Reporte');
INSERT INTO public.roles VALUES (4, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 1, 'S', 'Operario');

INSERT INTO public.unidades VALUES (0, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'No asignado', '-');
INSERT INTO public.unidades VALUES (0, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Mililitro', 'ml');
INSERT INTO public.unidades VALUES (1, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Unidad', 'Un.');
INSERT INTO public.unidades VALUES (2, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Kilogramo', 'Kg.');
INSERT INTO public.unidades VALUES (3, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Litro', 'lts');

INSERT INTO public.usuarios VALUES (1, '2023-07-17 01:52:21.753', '2023-07-29 00:41:32.87', 0, 'S', 'florenciarm@gmail.com', '$argon2i$v=19$m=4096,t=3,p=1$UdvVwFAa73vquCbgjzHGnQ$dnRtD9+4xl1k16OHcnoT4Va8pEXkM0K3cog+A40ATjI', '$argon2i$v=19$m=4096,t=3,p=1$9nWjz9m2kb8dowHX47/iJw$qdFgb7YttLj9byqFI0c9mqOMCGRrRS9QbOrllUVslu8', NULL, 'Florencia', 'Rodriguez', false, false, NULL, 1);
INSERT INTO public.usuarios VALUES (2, '2023-07-17 13:52:27.102', '2023-07-31 16:35:54.208', 0, 'S', 'jfernandezberrutti@gmail.com', '$argon2i$v=19$m=4096,t=3,p=1$VPsaxxEMloZJ81Iiu4puPg$ufDTvzcZjgKvFCujcWwn1rCTAeCQQ34prqaYSKcp8AE', '$argon2i$v=19$m=4096,t=3,p=1$L3Rj814vgjwhfrVeHAHMIA$XSgwLXh7wnrdjySCn4HkWXf6OBSk0gXaZqdB7E6tHl4', NULL, 'Juan', 'Fernandez', false, false, NULL, 1);

INSERT INTO public.usuarios_x_empresas VALUES (1, 1, '2023-07-17 01:52:21.779', '2023-07-17 01:52:21.779', 'S');
INSERT INTO public.usuarios_x_empresas VALUES (2, 1, '2023-07-17 13:52:27.132', '2023-07-17 13:52:27.133', 'S');

INSERT INTO public.monedas VALUES (1, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 1, 'S', 'Peso uruguayo', '$');
INSERT INTO public.monedas VALUES (2, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 1, 'S', 'Dolares americanos', 'U$S');


INSERT INTO public.tipo_articulo VALUES (1, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Producto termninado');
INSERT INTO public.tipo_articulo VALUES (2, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Insumos');
INSERT INTO public.tipo_articulo VALUES (3, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Servicios');
INSERT INTO public.tipo_articulo VALUES (0, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'No asignado');
INSERT INTO public.tipo_articulo VALUES (4, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Insumos veterinarios');

INSERT INTO public.tipo_cambio_diario VALUES (1, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 1, 'S', 40.000000000000000000000000000000, '2023-06-28 15:00:00', 2);
INSERT INTO public.tipo_cambio_diario VALUES (2, '2023-07-17 13:59:44.328', '2023-07-17 13:59:44.329', 0, 'S', 38.400000000000000000000000000000, '2023-07-17 13:59:44.309', 2);
INSERT INTO public.tipo_cambio_diario VALUES (3, '2023-07-18 20:11:53.089', '2023-07-18 20:11:53.089', 0, 'S', 38.600000000000000000000000000000, '2023-07-18 20:11:53.074', 2);
INSERT INTO public.tipo_cambio_diario VALUES (4, '2023-07-19 13:15:02.741', '2023-07-19 13:15:02.741', 0, 'S', 39.000000000000000000000000000000, '2023-07-19 13:15:02.726', 2);
INSERT INTO public.tipo_cambio_diario VALUES (5, '2023-07-20 12:37:26.163', '2023-07-20 12:37:26.164', 0, 'S', 38.500000000000000000000000000000, '2023-07-20 12:37:26.138', 2);
INSERT INTO public.tipo_cambio_diario VALUES (6, '2023-07-22 18:04:46.532', '2023-07-22 18:04:46.533', 0, 'S', 39.500000000000000000000000000000, '2023-07-22 18:04:46.513', 2);
INSERT INTO public.tipo_cambio_diario VALUES (7, '2023-07-24 15:30:54.383', '2023-07-24 15:30:54.384', 0, 'S', 38.500000000000000000000000000000, '2023-07-24 15:30:54.366', 2);
INSERT INTO public.tipo_cambio_diario VALUES (8, '2023-07-29 14:17:09.671', '2023-07-29 14:17:09.672', 0, 'S', 38.900000000000000000000000000000, '2023-07-29 14:17:09.651', 2);

INSERT INTO public.tipos_costeo VALUES (1, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 1, 'S', 'Ultima compra');

INSERT INTO public.tipos_ganado VALUES (0, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'No asignado');
INSERT INTO public.tipos_ganado VALUES (1, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Vacuno');
INSERT INTO public.tipos_ganado VALUES (2, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Ovino');
INSERT INTO public.tipos_ganado VALUES (3, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Equino');

INSERT INTO public.estados_ganado VALUES (1, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Propio');
INSERT INTO public.estados_ganado VALUES (2, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Ajeno');
INSERT INTO public.estados_ganado VALUES (0, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'No asignado');

INSERT INTO public.estados_stock VALUES (1, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Existencias', 'S');
INSERT INTO public.estados_stock VALUES (2, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Muerto', 'S');
INSERT INTO public.estados_stock VALUES (3, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Faeneado', 'S');

INSERT INTO public.marcas_ganado VALUES (1, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Hereford', 1);
INSERT INTO public.marcas_ganado VALUES (2, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Bradford', 1);
INSERT INTO public.marcas_ganado VALUES (3, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Jersey', 1);
INSERT INTO public.marcas_ganado VALUES (4, '2023-07-19 22:13:20.083', '2023-07-19 22:13:20.084', 'S', 'Angus', 1);
INSERT INTO public.marcas_ganado VALUES (0, '2023-07-19 22:40:33.369', '2023-07-19 22:40:33.37', 'S', 'No asignado', 1);
INSERT INTO public.marcas_ganado VALUES (5, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Cruza', 1);

INSERT INTO public.tipos_titulares VALUES (1, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 1, 'S', 'Cliente');
INSERT INTO public.tipos_titulares VALUES (2, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 1, 'S', 'Proveedor');
INSERT INTO public.tipos_titulares VALUES (3, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 1, 'S', 'Cliente y proveedor');

INSERT INTO public.tipos_toma_peso VALUES (1, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Real');
INSERT INTO public.tipos_toma_peso VALUES (2, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Promedio total kg');
INSERT INTO public.tipos_toma_peso VALUES (3, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Promedio por muestra');
INSERT INTO public.tipos_toma_peso VALUES (0, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'No asignado');

INSERT INTO public.categorias_prov VALUES (0, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 1, 'S', 'No asignado');
INSERT INTO public.categorias_prov VALUES (1, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 1, 'S', 'Consignatario');
INSERT INTO public.categorias_prov VALUES (2, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 1, 'S', 'Transportista');
INSERT INTO public.categorias_prov VALUES (2, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 1, 'S', 'Veterinario');
INSERT INTO public.categorias_prov VALUES (2, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 1, 'S', 'Almacen');

INSERT INTO public.categorias_cliente VALUES (0, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 1, 'S', 'No asignado');
INSERT INTO public.categorias_cliente VALUES (1, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 1, 'S', 'Frigorifico');
INSERT INTO public.categorias_cliente VALUES (2, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 1, 'S', 'Particular');

INSERT INTO public.titulares VALUES (1, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 1, 'S', 'Zambrano', 'Zambrano SA', '23232323232', 'Gral Narino 2322', 'info@zambrano.com.uy', '', 'Agustin Zambrano', '59895872288', 2, 1, 0, 1);
INSERT INTO public.titulares VALUES (2, '2023-07-19 20:07:25.789', '2023-07-19 20:07:25.79', 0, 'S', 'Carlos Transporte', '323123', '31231231232', 'hb', 'hjb', 'Carlos Transporte', 'Carlos Transporte', 'jhbjhb', 3, 1, 0, 1);
INSERT INTO public.titulares VALUES (3, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 1, 'S', 'Frigorifico Tacuarembo
', 'Frigorifico Tacuarembo
', '3423432243', 'Ruta 5 km429', 'nolose@gmail.com', '-', 'Carlos Tacuarembo
', '098727728', 1, 1, 2, 1);

INSERT INTO public.categorias_ganado VALUES (1, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Novillo 1-2 anios', 1);
INSERT INTO public.categorias_ganado VALUES (2, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Novillos 2-3 aniios', 1);
INSERT INTO public.categorias_ganado VALUES (3, '2023-07-19 22:10:21.8', '2023-07-19 22:10:21.8', 'S', 'Vaca invernada', 1);
INSERT INTO public.categorias_ganado VALUES (0, '2023-07-19 22:40:21.485', '2023-07-19 22:40:21.485', 'S', 'No asignado', 1);
INSERT INTO public.categorias_ganado VALUES (3, '2023-07-19 22:10:21.8', '2023-07-19 22:10:21.8', 'S', 'Vaca preñada', 1);
INSERT INTO public.categorias_ganado VALUES (4, '2023-07-19 22:10:21.8', '2023-07-19 22:10:21.8', 'S', 'Ternero al pie', 1);
INSERT INTO public.categorias_ganado VALUES (5, '2023-07-19 22:10:21.8', '2023-07-19 22:10:21.8', 'S', 'Ternero', 1);
INSERT INTO public.categorias_ganado VALUES (6, '2023-07-19 22:10:21.8', '2023-07-19 22:10:21.8', 'S', 'Vaca parida', 1);



INSERT INTO public.articulos VALUES (1, 'NOVHER12A', '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Novillo de 1-2 anios Hereford', 1, 1, 1, 1, 1);
INSERT INTO public.articulos VALUES (2, 'SERCOMIS1', '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Servicio comision 1%', 1, 1, 1, 1, 3);
INSERT INTO public.articulos VALUES (3, 'INSGASOIL', '2023-07-19 22:44:40.565', '2023-07-19 22:44:40.566', 'S', 'Gasoil', 3, 0, 0, 1, 2);
INSERT INTO public.articulos VALUES (4, 'INSNAFTA', '2023-07-19 22:45:15.039', '2023-07-19 22:45:15.039', 'S', 'Nafta', 3, 0, 0, 1, 2);
INSERT INTO public.articulos VALUES (5, 'NOVCRU12', '2023-07-19 22:46:46.874', '2023-07-19 22:46:46.875', 'S', 'Novillo cruza de 1-2 anios', 1, 1, 5, 1, 1);
INSERT INTO public.articulos VALUES (0, 'NOASIG', '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'No asignado', 1, 0, 0, 1, 1);

INSERT INTO public.articulos_x_titular VALUES (1, 'SERCOMIS1', '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 2, 1, NULL);

INSERT INTO public.control_trans VALUES (0, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 'No asignado', 'No asignado', false, 'No asignado', 1);
INSERT INTO public.control_trans VALUES (1, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 'NoRegIgualFecha', 'No se permite en la misma seccion 2 registros con la misma fecha', false, 'Se ha encontrado un error. Usted ya tiene un registro para la fecha de hoy', 1);
INSERT INTO public.control_trans VALUES (2, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 'RegYaUtilizadoContabilidad', 'Registro ya utilizado en otras secciones', false, 'Se ha encontrado un error. Este registro ya se ha utilizado en transacciones posteriores', 1);

INSERT INTO acciones VALUES (0,'2023-06-01T19:20:30.451Z', '2023-06-01T19:20:30.451Z','S',1,'No asignado'),
(1,'2023-06-01T19:20:30.451Z', '2023-06-01T19:20:30.451Z','S',1,'Alta'),
(2,'2023-06-01T19:20:30.451Z', '2023-06-01T19:20:30.451Z','S',1,'Baja'),
(3,'2023-06-01T19:20:30.451Z', '2023-06-01T19:20:30.451Z','S',1,'Editar'),
(4,'2023-06-01T19:20:30.451Z', '2023-06-01T19:20:30.451Z','S',1,'Visualizar');

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

INSERT INTO public.controles_x_seccion_accion VALUES (0, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 26, 0, 0, 'No asignado', 1, '');
INSERT INTO public.controles_x_seccion_accion VALUES (1, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 26, 1, 1, '', 1, '');
INSERT INTO public.controles_x_seccion_accion VALUES (2, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 26, 2, 2, '', 1, '');
INSERT INTO public.controles_x_seccion_accion VALUES (3, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 26, 3, 2, '', 1, '');
INSERT INTO public.controles_x_seccion_accion VALUES (4, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 1, 26, 3, 2, '', 3, 'fecha');

INSERT INTO public.depositos VALUES (0, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 1, 'S', 'No asignado', 0, '0', '0', '0', 0, 2, 1, 1);
INSERT INTO public.depositos VALUES (2, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 1, 'S', 'Isabelita', 2000, '2323232', '-56', '-32', 1800, 2, 1, 1);
INSERT INTO public.depositos VALUES (1, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 1, 'S', 'Estancia', 2000, '2323232', '-56', '-32', 1800, 2, 1, 1);
INSERT INTO public.depositos VALUES (3, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 1, 'S', 'Puesto', 2000, '2323232', '-56', '-32', 1800, 2, 1, 1);

INSERT INTO public.tipos_mov_stock VALUES (1, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Entrada', 1);
INSERT INTO public.tipos_mov_stock VALUES (2, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Salida', -1);
INSERT INTO public.tipos_mov_stock VALUES (3, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Traslado', 0);
INSERT INTO public.tipos_mov_stock VALUES (0, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'no asignado', 0);

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

INSERT INTO public.motivos_sanitarios VALUES (0, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'No asignado', 0, NULL, 'mes', NULL, NULL, NULL);
INSERT INTO public.motivos_sanitarios VALUES (1, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Parasitos ext. - Garrapata', 21, true, 'dias', NULL, NULL, NULL);
INSERT INTO public.motivos_sanitarios VALUES (2, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Carbunco bacteridiano ', 1, true, 'mensual', 2, NULL, NULL);
INSERT INTO public.motivos_sanitarios VALUES (3, '2023-06-01 19:20:30.451', '2023-06-01 19:20:30.451', 'S', 'Clostridiosis', 1, false, 'dias', 5, NULL, NULL);
INSERT INTO public.motivos_sanitarios VALUES (4, '2023-07-24 21:09:32.991', '2023-07-24 21:09:32.991', 'S', 'Parasitos Internos', 1, false, 'dias', 10, NULL, NULL);

INSERT INTO public.numeradores VALUES (1, '2023-06-01 19:20:30.451', '2023-07-29 14:15:01.528', 'S', 'nro_trans', 0);

INSERT INTO public.pasturas VALUES (1, '2023-07-26 21:34:38.314', '2023-07-26 21:34:38.315', 0, 'S', 'Ryegrass', 730);

INSERT INTO public.sectores VALUES (1, '2023-07-26 21:16:50.976', '2023-07-26 21:16:50.977', 0, 'S', 'Esquina 5', 210, 1, 1, NULL);
INSERT INTO public.sectores VALUES (2, '2023-07-26 21:17:07.659', '2023-07-26 21:17:07.659', 0, 'S', 'Piquete casa', 200, 1, 1, NULL);
INSERT INTO public.sectores VALUES (3, '2023-07-26 21:17:51.908', '2023-07-26 21:17:51.908', 0, 'S', 'Baltasar', 222, 3, 1, NULL);
INSERT INTO public.sectores VALUES (4, '2023-07-26 21:18:10.042', '2023-07-26 21:18:10.043', 0, 'S', 'Las Naranjeras 1', 2312, 3, 1, NULL);
INSERT INTO public.sectores VALUES (5, '2023-07-26 21:18:29.027', '2023-07-26 21:18:29.028', 0, 'S', 'Potrero 1', 232, 2, 1, NULL);
INSERT INTO public.sectores VALUES (6, '2023-07-26 21:53:53.086', '2023-07-26 21:53:53.087', 0, 'S', 'Embarcadero', 200, 1, 1, true);

INSERT INTO public.pasturas_x_sector VALUES (1, '2023-07-26 23:46:43.95', '2023-07-26 23:46:43.951', 0, 'S', 'asdsadasd', 'sdasdasdas', '2023-07-26 15:00:00', '2023-07-27 15:00:00', '2023-07-14 15:00:00', '2023-07-07 15:00:00', 1, 1, 1);

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




//ELIMINO OPERATIVA
delete  from cpf_stockaux;
delete  from cpt_identidad;
delete from cpf_costos;
delete from cpf_log;
delete from cpt_movimiento_stock;
delete from cpp_movimiento_stock;
delete from cpt_facturas;
delete from cpf_consumos;
delete from cpf_contaux;
delete from cpf_registro_sanitario;
delete from cpt_registro_sanitario;
delete from cpp_fact_prov;
delete from cpp_facturas;
delete from cpp_ingresoromaneo;