SELECT p.apellido1, p.apellido2, p.nombre
FROM persona p 
JOIN alumno a ON p.id = a.id_persona
ORDER BY p.apellido1, p.apellido2, p.nombre ASC

SELECT p.nombre
FROM persona p
JOIN alumno a ON p.id = a.id_persona
WHERE YEAR(p.fecha_nacimiento) = 1999