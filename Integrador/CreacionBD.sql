
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
fecha_nac DATE DEFAULT NULL,
perro INT,
descripcion VARCHAR(80) DEFAULT NULL,
monto DECIMAL NOT NULL,
FOREIGN KEY (perro) REFERENCES perro(id_perro)
);



