
#creando la base de datos con el nombre de peluqueriacanina
create database peluqueriacanina;

#Usando la bd
use peluqueriacanina;
#punto numero uno crear la base de datos
#Creando la tabla Dueno
CREATE TABLE Dueno (
DNI INT NOT NULL UNIQUE,
Nombre VARCHAR(50) DEFAULT NULL, 
Apellido VARCHAR(50) DEFAULT NULL,
Direccion VARCHAR(255) DEFAULT NULL,
Telefono VARCHAR(255) DEFAULT NULL,
PRIMARY KEY (Dni)
);

#Usando la bd
use peluqueriacanina;
#Creacion de la tabla Perro
CREATE TABLE Perro (
ID_perro INT UNIQUE AUTO_INCREMENT NOT NULL,
Nombre VARCHAR(50) DEFAULT NULL, 
Fecha_nac DATE DEFAULT NULL,
Sexo VARCHAR(20) DEFAULT NULL,
DNI_dueno INT NOT NULL,
PRIMARY KEY (ID_perro),
FOREIGN KEY (DNI_dueno) REFERENCES Dueno(DNI)
);

#Usando la bd
use peluqueriacanina;
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

#Punto numero dos insertar datos en las tablas creadas
#Usando la bd
use peluqueriacanina;
#Insertando datos en la tabla Dueno
INSERT INTO Dueno (DNI, Nombre, Apellido, Direccion,Telefono) VALUES 
(41658784, 'pedro','paez', 'av cordoba 450','35415876868'),
(41648154, 'pedro','fernandez', 'las margaritas 380','3541458987'),
(40894578, 'pedro','jaer', 'av malvinas argentinas 1000','3516854545'),
(42154789, 'fernanda','cordoba', 'los Laureles 780','3516874584'),
(35458965, 'lucas','alvez', 'los geraneos 1002','3541258475'),
(38458795, 'romina','gonzalez', 'las asucenas 350','3541245987'),
(40245687, 'ricardo','gimenez', 'av juan b justo 3000','3541578527'),
(40197512, 'leandro','sosa', ' independecia 1200','3512678548'),
(41245698, 'martin','molina', 'rivadavia 500','3541254798');

#Usando la bd
use peluqueriacanina;
#Insertando datos en la tabla Perro
INSERT INTO Perro (ID_perro, Nombre, Fecha_nac, Sexo,Dni_dueno) VALUES 
(1, 'toby','2018-03-21', 'masculino','41658784'),
(2, 'capitan','2016-08-05', 'masculino','41648154'),
(3, 'isidoro','2019-05-22', 'masculino','41648154'),
(4, 'tomy','2014-07-15', 'masculino','41648154'),
(5, 'roco','2015-02-13', 'masculino','40894578'),
(6, 'luz','2015-05-12', 'femenino','42154789'),
(7, 'franchesca','2016-06-06', 'femenino','42154789'),
(8, 'alma','2017-04-25', 'femenino','35458965'),
(9, 'negrito','2019-04-16', 'masculino','38458795'),
(10, 'indio','2020-07-04', 'masculino','40245687'),
(11, 'mateo','2019-08-001', 'masculino','40245687'),
(12, 'coli','2017-05-03', 'femenino','40197512'),
(13, 'blanquito','2016-01-12', 'masculino','41245698');


#Insertando datos en la tabla Historial
use peluqueriacanina;
INSERT INTO Historial (ID_Historial, Fecha,Perro,Descripcion,Monto) VALUES 
(1, '2022-1-15 ',1,'vacunacion anti desparasitaria',1500),
(2, '2022-05-08 ',2,'vacunacion contra sarna',1000),
(3, '2022-05-08 ',3,'vacunacion contra sarna',1000),
(4, '2022-05-09 ',4,'vacunacion contra sarna',1000),
(5, '2022-05-09 ',5,'baño',800),
(6, '2022-05-09 ',6,'vacunacion anti desparasitaria',1500),
(7, '2022-05-09 ',7,'baño y corte',1500),
(8, '2022-05-09 ',8,'baño',800),
(9, '2022-05-09 ',9,'baño',800),
(10, '2022-05-09 ',10,'baño',800),
(11, '2022-05-10 ',11,'vacunacion contra sarna',1000),
(12, '2022-05-10 ',12,'curacion',1000),
(13, '2022-05-10 ',13,'baño',800);

#punto numero tres consultar y borrar
#Usando la bd
use peluqueriacanina;
#Consultado todos los registros de la tabla Historial ordenándolos ascendentemente 
SELECT * FROM Historial ORDER BY Fecha ASC;

#Usando la bd
use peluqueriacanina;
#Borrando un registro de la tabla Historial
delete from Historial where ID_Historial='1';

#consulto y veo que el historial se borro
select * from Historial;

#consultando y actualizando la fecha de nacimiento de un perro
#Usando la bd
use peluqueriacanina;
#Consultando todos los registros de la tabla Perro
SELECT * FROM Perro;

#Usando la bd
use peluqueriacanina;
#Actualizando la fecha de nacimiento de un Perro donde el ID_Perro sea igual a 1
UPDATE Perro SET Fecha_nac='2020-11-18' WHERE ID_perro=1

#Usando la bd
use peluqueriacanina;
#Verifica que se actualizo la fecha consultando la tabla perro donde el ID_perro sea igual a 1
SELECT * FROM Perro WHERE ID_perro=1;
#coloque usedatabase por cada creacion de tabla, insertacion de datos consultas
#porque a la hora de ejecutar considere que se ejecutaria asi
