SET SQL_SAFE_UPDATES =0;
DROP DATABASE IF EXISTS peluquericanina;

# Creamo la Base de Datos si no existe  
CREATE DATABASE peluquericanina;
# Seleccionamos la base de datos
USE peluquericanina;


#CREACION DE TABLA Duenio
CREATE TABLE duenio (
dni INT NOT NULL UNIQUE,
nombre VARCHAR(50) DEFAULT NULL, 
apellido VARCHAR(50) DEFAULT NULL,
direccion VARCHAR(255) DEFAULT NULL,
telefono VARCHAR(255) DEFAULT NULL,
PRIMARY KEY (dni)
);

#Creacion de la tabla Perro
CREATE TABLE perro (
id_perro INT UNIQUE AUTO_INCREMENT NOT NULL PRIMARY KEY,
nombre VARCHAR(50) DEFAULT NULL, 
fecha_nac DATE DEFAULT NULL,
sexo VARCHAR(20) DEFAULT NULL,
dni_duenio INT NOT NULL,
FOREIGN KEY (dni_duenio) REFERENCES duenio(dni)
);

#Creacion de la tabla Historial
CREATE TABLE historial (
id_historial INT UNIQUE AUTO_INCREMENT NOT NULL PRIMARY KEY,
fecha DATE DEFAULT NULL,
perro INT,
descripcion VARCHAR(80) DEFAULT NULL,
monto DECIMAL NOT NULL,
FOREIGN KEY (perro) REFERENCES perro(id_perro)
);

#2.Inserte en la tabla correspondiente un nuevo animal (perro) como paciente y el dueño asociado a ese animal
#Insertamos Duenios
INSERT INTO duenio (dni, nombre, apellido, direccion,telefono) VALUES
(11111111, 'Susana','Horia', 'Calle Oscuridad 380','2611458987'),
(22222222, 'Armando','Paredes', 'Av Siempreviva 1115','2612584957'),
(33333333, 'Estaban','Quito', 'Calle Vieja S/N','2612584957');

#Insertamos Perros
INSERT INTO perro (id_perro, nombre, fecha_nac, sexo, dni_duenio) VALUES
(1,'Firulais', '2020-11-15', 'Macho',  11111111),
(2,'Fido', '2021-11-21', 'Macho',  22222222),
(3,'Samantha', '2020-05-12', 'Hembra',  33333333);

#Historial de cada Perro
INSERT INTO peluquericanina.historial (id_historial,fecha,perro,descripcion,monto) VALUES
(1,'2021-02-10',1,'Completo', 2827.15);
INSERT INTO peluquericanina.historial (id_historial,fecha,perro,descripcion,monto) VALUES
(2,'2021-05-06',3,'Corte',850.20);
INSERT INTO peluquericanina.historial (id_historial,fecha,perro,descripcion,monto) VALUES
(3,'2021-02-10',1,'Corte',850.20);
INSERT INTO peluquericanina.historial (id_historial,fecha,perro,descripcion,monto) VALUES
(4,'2021-02-10',2,'Completo',3250.00);



