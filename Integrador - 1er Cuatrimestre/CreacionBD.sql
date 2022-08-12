
SET SQL_SAFE_UPDATES =0;
DROP DATABASE IF EXISTS peluquericanina;

# Creamo la Base de Datos si no existe  
CREATE DATABASE peluquericanina;
# Seleccionamos la base de datos
USE peluquericanina;


#CREACION DE TABLA Dueno
CREATE TABLE Dueno (
dni INT NOT NULL UNIQUE,
Nombre VARCHAR(50) DEFAULT NULL, 
Apellido VARCHAR(50) DEFAULT NULL,
Direccion VARCHAR(255) DEFAULT NULL,
Telefono VARCHAR(255) DEFAULT NULL,
PRIMARY KEY (dni)
);

#Creacion de la tabla Perro
CREATE TABLE Perro (
id_Perro INT UNIQUE AUTO_INCREMENT NOT NULL PRIMARY KEY,
Nombre VARCHAR(50) DEFAULT NULL, 
Fecha_nac DATE DEFAULT NULL,
Sexo VARCHAR(20) DEFAULT NULL,
DNI_dueno INT NOT NULL,
FOREIGN KEY (dni_duenio) REFERENCES duenio(dni)
);

#Creacion de la tabla Historial
CREATE TABLE Historial (
id_Historial INT UNIQUE AUTO_INCREMENT NOT NULL PRIMARY KEY,
Fecha DATE DEFAULT NULL,
Perro INT,
Descripcion VARCHAR(80) DEFAULT NULL,
Monto DECIMAL NOT NULL,
FOREIGN KEY (perro) REFERENCES perro(id_perro)
);



