
# Seleccionamos la base de datos
USE peluquericanina;

#2.Inserte en la tabla correspondiente un nuevo animal (perro) como paciente y el dueño asociado a ese animal

INSERT INTO dueno (DNI, nombre, apellido, direccion,telefono) VALUES (11111111, 'Susana','Horia', 'Av Oscuridad 380','2611458987'),(22222222, 'Armando','Paredes', 'Av Siempreviva 1115','2612584957');

INSERT INTO perro (ID_perro, nombre, fecha_nac, sexo, dni_duenio) VALUES (1,'Firulais', '2020-11-15', 'Macho',  11111111);

#9. Escriba una consulta que permita actualizar la dirección de un dueño. Su nueva dirección es Libertad 123

UPDATE peluquericanina.dueno
	SET direccion='Libertad 123'
	WHERE dni=11111111;



