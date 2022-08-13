# Seleccionamos la base de datos
USE peluquericanina;

#9. Escriba una consulta que permita actualizar la dirección de un dueño. Su nueva dirección es Libertad 123

UPDATE peluquericanina.duenio
	SET direccion='Libertad 123'
	WHERE dni=11111111;

#10. Vaciar la tabla historial y resetear el contador del campo ID.

TRUNCATE peluquericanina.historial;

#11. Obtener todos los dueños que tengan perros de menos de 5 años de edad que no hayan visitado la peluquería en el año 2022.
#importante volver a llenar el historial!!!

SELECT DISTINCT d.nombre, d.apellido,p.nombre AS 'Perro', h.fecha as 'Ultima Visita' FROM duenio d 
JOIN perro p 
	ON d.dni = p.dni_duenio 
JOIN historial h 
	ON p.id_perro = h.perro WHERE p.fecha_nac >= '20170101' AND h.fecha < '20220101';

#12. Obtener todos los perros de sexo “Macho” nacidos entre 2020 y 2022.

SELECT * FROM perro p WHERE p.sexo = 'Macho' AND p.fecha_nac > '20193112';


