create database db_universidad;
use db_universidad;
create table alumno(
id_alumno integer(10)primary key not null,
nit varchar(9) not null,
nombre varchar(25) not null,
apellido_uno varchar(50) not null,
apeliido_dos varchar (50) not null,
ciudad varchar (25),
direccion varchar(25),
telefono integer(10),
fecha_nacimiento date,
sexo ENUM('h','m')
);

create table profesor(
id_alumno integer(10)primary key not null,
nit varchar(9) not null,
nombre varchar(25) not null,
apellido_uno varchar(50) not null,
apeliido_dos varchar (50) not null,
ciudad varchar (25),
direccion varchar(25),
telefono integer(10),
fecha_nacimiento date,
sexo ENUM('h','m'),
id_departamento integer(10),
foreign key (id_departamento) references departamento (id_departamento)
);
alter table profesor change id_alumno id_profesor integer not null;
describe profesor;

create table departamento (
id_departamento integer(10) primary key not null,
nombre varchar(50)
);

create table asignatura (
id_asign int (10) primary key not null,
nombre_asig varchar (25) not null,
creditos float not null,
tipo ENUM ('básica', 'obligatoria', 'optativa') not null,
curso tinyint(3) not null,
cuatrimestre  tinyint(3) not null,
id_profesor integer(10) not null,
foreign key (id_profesor) references profesor (id_profesor),
id_grado int (10),
foreign key (id_grado) references grado (id_grado) 
);

create table grado(
id_grado int(10) primary key not null,
nombre varchar (100)not null
);

create table curso_escolar (
id_curso int (10) primary key not null,
año_inicio year (4) not null,
año_fin year (4) not null
);
create table alumno_se_matricula_en_asignatura(
id_alumno int(10),
foreign key (id_alumno) references alumno (id_alumno),
id_asignatura int(10),
foreign key (id_asignatura) references asignatura (id_asign),
id_curso int(10),
foreign key (id_curso) references curso_escolar(id_curso)
);


INSERT INTO alumno (id_alumno, nit, nombre, apellido_uno, apeliido_dos, ciudad, direccion, telefono, fecha_nacimiento, sexo)
VALUES
(1, '123456789', 'Juan', 'Perez', 'Rodriguez', 'Ciudad de México', 'Calle 123, Centro', 555134567, '1995-03-15', 'h'),
(2, '987654321', 'Maria', 'Garcia', 'Lopez', 'Guadalajara', 'Ave. Principal Juarez', 333876543, '1998-07-22', 'm'),
(3, '654321987', 'Carlos', 'Hernandez', 'Sanchez', 'Monterrey', 'Calle 789, Colonia ', 811235678, '1994-11-10', 'h'),
(4, '789456123', 'Ana', 'Lopez', 'Ramirez', 'Puebla', 'Blvd. Revolución 234', 222346789, '1997-02-28', 'm'),
(5, '567891234', 'Luis', 'Martinez', 'Fernandez', 'Tijuana', 'Calle 567, Playas', 664578901, '1996-09-05', 'h');

INSERT INTO departamento (id_departamento, nombre)
VALUES
(1, 'choco'),
(2, 'guanapelo'),
(3, 'tijuana'),
(4, 'fontibon'),
(5, 'sena');
INSERT INTO profesor (id_profesor, nit, nombre, apellido_uno, apeliido_dos, ciudad, direccion, telefono, fecha_nacimiento, sexo, id_departamento)
VALUES
(101, '111222333', 'José', 'López', 'Pérez', 'Ciudad de México', 'Calle 4Centro', 55598543, '1980-05-10', 'h', 4),
(102, '444555666', 'María', 'González', 'Hernández', 'Guadalajara', 'Ave. Principal Juarez', 31234567, '1975-09-15', 'm', 2),
(103, '777888999', 'Carlos', 'Martínez', 'Sánchez', 'Monterrey', 'Calle 123 Sur', 85556666, '1988-02-20', 'h', 3),
(104, '123456789', 'Ana', 'Ramírez', 'López', 'Puebla', 'Blvd. RevoluciónModerna', 2229999, '1972-11-30', 'm', 1),
(105, '987654321', 'Luis', 'Fernández', 'García', 'Tijuana', 'Calle 789 playas', 66778888, '1985-07-05', 'h', 5);

INSERT INTO grado (id_grado, nombre)
VALUES
(1, 'Primer Grado'),
(2, 'Segundo Grado'),
(3, 'Tercer Grado'),
(4, 'Cuarto Grado'),
(5, 'Quinto Grado');

INSERT INTO asignatura (id_asign, nombre_asig, creditos, tipo, curso, cuatrimestre, id_profesor, id_grado)
VALUES
(1, 'Matemáticas', 4.0, 'básica', 1, 1, 101, 1),
(2, 'Historia', 3.0, 'obligatoria', 2, 2, 104, 2),
(3, 'Inglés Avanzado', 2.5, 'optativa', 3, 1, 105, 3),
(4, 'Programación Java', 4.0, 'básica', 2, 1, 103, 2),
(5, 'Física', 3.5, 'obligatoria', 1, 2, 102, 1);
INSERT INTO curso_escolar (id_curso, año_inicio, año_fin)
VALUES
(1, 2023, 2024),
(2, 2024, 2025),
(3, 2025, 2026),
(4, 2026, 2027),
(5, 2027, 2028);
INSERT INTO alumno_se_matricula_en_asignatura (id_alumno, id_asignatura, id_curso)
VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 2),
(4, 4, 2),
(5, 5, 1);


SELECT * FROM profesor;






