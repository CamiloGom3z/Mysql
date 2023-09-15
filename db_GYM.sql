#creamos base de datos
DROP DATABASE IF EXISTS db_gym; 
create database db_GYM;
#usamos base de datos
use db_GYM;
#creamos tabla miembros
create table miembros(
id_miembros int primary key not null,
nombre varchar(50) not null,
apellido varchar(50) not null,
fecha_nacimiento date,
genero varchar(10) not null,
telefono int not null,
correo varchar(50),
fecha_inscripcion date not null 
);

#creamos tabla pagos
create table pagos(
id_pagos int primary key not null,
monto int not null,
metodo_pago varchar(50) not null,
id_miembro int not null,
foreign key pagos(id_miembro) references miembros(id_miembros) 
);

#creamos la tabla entranadores
create table entrenador(
id_entrenador int primary key not null,
nombre varchar(50) not null,
apellido varchar(50) not null,
especialidad varchar(100) not null,
telefono int not null,
correo varchar(50)
);

#creamos la tabla planes
create table planes(
id_plan int primary key not null,
nom_plan varchar(50) not null,
descripcion varchar(100) not null,
precio_mensual int not null,
id_miembros int not null,
id_entrenador int not null,
foreign key (id_miembros) references miembros(id_miembros),
foreign key (id_entrenador) references entrenador(id_entrenador) 
);

#creamos tabla asistencia
create table asistencia(
id_asistencia int primary key not null,
fecha_asistencia date not null,
hora_ingreso datetime not null,
hora_salida datetime not null,
id_miembros int not null,
foreign key asistencia(id_miembros) references miembros(id_miembros)
);

insert into miembros(id_miembros,nombre,apellido,fecha_nacimiento,genero,telefono,correo,fecha_inscripcion) values (1,"Andres","Perez",03/12/2002,"M",12345,"andres@gmail.com",02/22/2023);
INSERT INTO miembros (id_miembros, nombre, apellido, fecha_nacimiento, genero, telefono, correo, fecha_inscripcion) VALUES (2, "María", "López", '1999-07-15', "F", 67890, "maria@gmail.com", '2023-08-15');
INSERT INTO miembros (id_miembros, nombre, apellido, fecha_nacimiento, genero, telefono, correo, fecha_inscripcion) VALUES (3, "Juan", "González", '1995-02-25', "M", 54321, "juan@hotmail.com", '2023-06-10');

#insercion en la tabla pagos
INSERT INTO pagos (id_pagos, monto, metodo_pago, id_miembro) VALUES (1, 100, "Tarjeta de crédito", 1);

#insercion en la tabla entrenador
INSERT INTO entrenador (id_entrenador, nombre, apellido, especialidad, telefono, correo) VALUES (1, "Camilo", "García", "Entrenamiento funcional", 789012, "camilo@gmail.com");

#insercion en la tabla planes
INSERT INTO planes (id_plan, nom_plan, descripcion, precio_mensual, id_miembros, id_entrenador) VALUES (1, "Plan Básico", "Entrenamiento de fuerza", 50, 1, 1);

#insercion en la tabla asistencia
INSERT INTO asistencia (id_asistencia, fecha_asistencia, hora_ingreso, hora_salida, id_miembros) VALUES (1, '2023-08-25', '2023-08-25 09:00:00', '2023-08-25 11:00:00', 1);


select * from miembros;

