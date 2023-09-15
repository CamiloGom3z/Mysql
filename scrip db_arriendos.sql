# crear base de datos
create database db_arriendos;
#usar base de datos
use db_arriendos;
# crear tabla departamento
create table departamento(
id_departamento int primary key not null,
num_departamento varchar(100) not null
);
create table propietario(
 id_propietario int primary key not null,
 primer_nombre varcharacter (100) not null,
 segundo_nombre varcharacter(100) not null,
 primer_apellido varcharacter(100)not null,
 segundo_apellido varcharacter(100),
 celular integer(10) not null,
 telefono int,
 gmail varchar(100) not null
 );
create table ciudad(
id_ciudad int primary key not null,
nom_ciudad varchar(100) not null,
cod_departamento int not null,
foreign key(cod_departamento) references departamento (id_departamento)
);
create table arriendo(
id_arriendo int primary key not null,
	f_inicio date not null,
	f_fin date not null,
	valor_mensual int not null,
	cod_vivienda int not null,
	foreign key(cod_vivienda) references vivienda (id_vivienda)
);
create table arriendo_inquilinos(
    cod_arriendo int not null,
    cod_inquilino int not null,
    primary key(cod_arriendo, cod_inquilino),
    foreign key(cod_arriendo) references arriendo(id_arriendo),
    foreign key(cod_inquilino) references inquilino(identificacion_inquilino)
);
create table vivienda(
id_vivienda int primary key not null,
direccion varchar(100) not null,
cantidad_habitantes int not null,
descripcion varcharacter(100),
cod_propietario int not null,
cod_ciudad int not null,
foreign key(cod_propietario) references propietario (id_propietario),
foreign key(cod_ciudad) references ciudad (id_ciudad)
);
 create table inquilino(
 identificacion_inquilino int primary key not null,
 primer_nombre varchar(100) not null,
 segundo_nombre varchar(100)not null,
 primer_apellido varchar(100) not null,
 segundo_apellido varchar(100)not null,
 email varchar(100)not null,
 celular int not null
 );
 
 #modificar una tabla
 alter table vivienda add constraint fk_vivienda_propietario foreign key(id_propietario) references propietario (id_propietario);
 alter table vivienda modify column celular int(10);
 
 #mirar toda la tabla 
 show tables;
 #mostrar una en especifico
 describe inquilino;
 #insertar registros em las tablas creadas
 insert into departamento(id_departamento, num_departamento) values ( 1 ,'quindio');
 insert into departamento(id_departamento, num_departamento) values ( 2 ,'tolima');
 insert into departamento(id_departamento, num_departamento) values ( 3,'choco');
 insert into departamento(id_departamento, num_departamento) values ( 4,'huila');
 insert into departamento(id_departamento, num_departamento) values ( 5,'pijao');
 insert into departamento(id_departamento, num_departamento) values ( 6,'circasia');
 describe departamento;
 select * from propietario;
 describe propietario;
 
 insert into propietario(id_propietario, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, celular ,telefono, gmail) values (1,'pedro','javier','gomez','lopez', 3148268334,7444567,'elcanserb@gmail.com', 2,'camilo','andres','gomez','fernadez',3148263734,744852699,'eldsfsdfsdfsd@gmail.com');
 ## alterar campo celular
alter table propietario modify column celular int(10);
alter table propietario add column celular_segundo integer(10);
alter table propietario add column celular_segundo double;
alter table propietario drop column celular_segundo;
alter table propietario add constraint uk_email unique(email);

# comando para visualizar tablas en la base de datos
show tables;

# visualizar composicion de la tabla
describe ciudad;
describe propietario;

# insertar registros en las tablas creadas
insert into departamento(id_departamento, nom_departamento) values (1, 'Quindio');
insert into departamento(id_departamento, nom_departamento) values (2, 'Tolima'), (3, 'Bogota'), (4, 'Cali');


insert into ciudad(id_ciudad, nom_ciudad, cod_departamento) values (1, 'armenia', 1);
insert into ciudad(id_ciudad, nom_ciudad, cod_departamento) values (2, 'calarca', 1);

# mostrar registros en la tabla
select id_ciudad, nom_ciudad from ciudad;
select * from ciudad;
select * from departamento;