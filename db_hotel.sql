use db_hotel;
create table servicios (
codigo_servicio integer primary key  not null,
nombre_servicio varchar (100) not null,
descripcion_servicio text not null,
costo_servicio integer not null

);
create table habitacion(
numero_unico integer primary key not null,
tipo_sencilla varchar(100) not null,
tipo_doble varchar (100) not null,
tipo_suite varchar (100) not null
);
 create table habitacion_servicio(
 cod_habitacion_servicio integer primary key not null,
 numero_unico integer not null,
 codigo_servicio integer not null,
 foreign key (numero_unico) references habitacion (numero_unico),
 foreign key (codigo_servicio) references servicioS (codigo_servicio)
 );
 
 create table huesped (
 id_huesped integer primary key not null,
 nom_nombre varchar(255)not null,
 nombre_apellidos varchar(255) not null,
 celular int(10) not null,
 email varchar(255) not null,
 cod_reservacion integer not null,
 foreign key (cod_reservacion) references reservacion (cod_reservacion)
 );
 
 create  table reservacion(
 cod_reservacion integer primary key not null,
 disponibilidad varchar(255) not null,
 fecha_inicio date not null,
 fecha_fin date not null
 ) ;

create table habitacion_reservacion(
codigo_reservacion integer primary key not null,
cod_reservacion integer not null,
numero_unico integer not null,
foreign key (cod_reservacion) references reservacion (cod_reservacion),
foreign key (numero_unico) references habitacion (numero_unico)
);
   show tables;servicios

