##INSERT por cada tabla
## 1.-   Insertar localidades
## 2.-   Insertar alumnos
## 3.-   Insertar carreras
## 4.-   Insertar Materias
## 5.-   Inscribir alumnos a materias

## 1
INSERT into Localidad (idLocalidad, nombre) values (1,'Mendoza');
INSERT into Localidad (idLocalidad, nombre) values (2,'Maipu');
INSERT into Localidad (idLocalidad, nombre) values (3,'San Martin');
INSERT into Localidad (idLocalidad, nombre) values (4,'Cordoba');
INSERT into Localidad (idLocalidad, nombre) values (5,'Rio Cuarto');

## 2 
INSERT into Alumno (Legajo, Nombre, Apellido, Localidad, Telefono) values (27459881, 'Test', 'User', '3','2612493358');
INSERT into Alumno (Legajo, Nombre, Apellido, Localidad, Telefono) values (37449881, 'Elba', 'Gallo', '4','3512493358');
INSERT into Alumno (Legajo, Nombre, Apellido, Localidad, Telefono) values (29455181, 'Susana', 'Oria', '2','2612493358');
INSERT into Alumno (Legajo, Nombre, Apellido, Localidad, Telefono) values (32449889, 'Armando', 'Paredes', '5','3512484358');
INSERT into Alumno (Legajo, Nombre, Apellido, Localidad, Telefono) values (40587214, 'Sevelinda', 'Parada', '1','26124974710');

## 3 
INSERT INTO Carrera (idCarrera, NombreCarrera) VALUES (1, 'Redes');
INSERT INTO Carrera (idCarrera, NombreCarrera) VALUES (2, 'Administración');
INSERT INTO Carrera (idCarrera, NombreCarrera) VALUES (3, 'Biotecnología');
INSERT INTO Carrera (idCarrera, NombreCarrera) VALUES (4, 'Programación');
INSERT INTO Carrera (idCarrera, NombreCarrera) VALUES (5, 'Análisis de Datos');

## 4
INSERT INTO Materias (idMaterias, Nombre, Carrera) VALUES (1, 'Lógica', 5);
INSERT INTO Materias (idMaterias, Nombre, Carrera) VALUES (2, 'Inglés', 2);
INSERT INTO Materias (idMaterias, Nombre, Carrera) VALUES (3, 'Sistemas de Información', 3);
INSERT INTO Materias (idMaterias, Nombre, Carrera) VALUES (4, 'Programación 1', 4);
INSERT INTO Materias (idMaterias, Nombre, Carrera) VALUES (5, 'Proyecto', 1);

## 5 
INSERT INTO AlumnoXMaterias (Legajo, IdMateria, Nota) VALUES (27459881, 1, 6);
INSERT INTO AlumnoXMaterias (Legajo, IdMateria, Nota) VALUES (29455181, 5, 8);
INSERT INTO AlumnoXMaterias (Legajo, IdMateria, Nota) VALUES (32449889, 4, 9);
INSERT INTO AlumnoXMaterias (Legajo, IdMateria, Nota) VALUES (37449881, 3, 7);
INSERT INTO AlumnoXMaterias (Legajo, IdMateria, Nota) VALUES (40587214, 2, 6);


