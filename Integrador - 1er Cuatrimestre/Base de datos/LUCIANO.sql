#creacion base de datos
create database peluqueriacanina;
use peluqueriacanina;
#creacion tabla dueno
CREATE TABLE Dueno (
DNI INT NOT NULL UNIQUE,
Nombre VARCHAR(50) DEFAULT NULL, 
Apellido VARCHAR(50) DEFAULT NULL,
Direccion VARCHAR(255) DEFAULT NULL,
Telefono VARCHAR(255) DEFAULT NULL,
PRIMARY KEY (Dni)
);
#Creacion de la tabla Perro
CREATE TABLE Perro (
ID_perro INT UNIQUE AUTO_INCREMENT NOT NULL,
Nombre VARCHAR(50) DEFAULT NULL, 
Fecha_nac DATE DEFAULT NULL,
Sexo VARCHAR(20) DEFAULT NULL,
DNI_dueno INT NOT NULL,
PRIMARY KEY (ID_perro),

#Creacion de la tabla Historial
CREATE TABLE Historial (
ID_Historial INT UNIQUE AUTO_INCREMENT NOT NULL,
Fecha DATE NOT NULL,
Perro INT NOT NULL ,
Descripcion VARCHAR(80) DEFAULT NULL,
Monto DECIMAL NOT NULL,
PRIMARY KEY (ID_Historial),
    FOREIGN KEY (Perro) REFERENCES Perro(ID_perro)
);

#insercion de dueno
INSERT INTO Dueno (DNI, Nombre, Apellido, Direccion,Telefono) VALUES (16847256, 'juan','perez', 'av san martin 111','351151617'), (29815365, 'luis','gomez', 'sucre 222','351036487'),(25666888, 'javier','lopez', 'colon 114','351897456');

#insercion perro
INSERT INTO Perro (ID_perro, Nombre, Fecha_nac, Sexo,Dni_dueno) VALUES
(1, 'batuke','2019-08-16', 'macho', 16847256),
(2, 'boby','2016-04-11', 'macho',29815365),
(3, 'wonka', '2020-05-31','hembra', 25666888);

#insercion historial
INSERT INTO Historial (ID_Historial, Fecha,Perro,Descripcion,Monto) VALUES
(1, '2022-01-15',1,'corte de pelo',1000),
(2, '2022-07-08',2,'Baño',800);

#Ejercicio 6
SELECT * FROM perro p JOIN historial h ON p.ID_perro = h.Perro WHERE h.Fecha >= '20220101';
