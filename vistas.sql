--Vista de Estudiantes Activos:

CREATE VIEW vista_estudiantes_activos AS
SELECT p.id, p.nif, p.nombre, p.apellido1, p.apellido2, p.fecha_nacimiento, p.sexo, a.id AS id_alumno
FROM persona p
JOIN alumno a ON p.id = a.id_persona;


--Vista de Profesores por Departamento:


CREATE VIEW vista_profesores_departamento AS
SELECT p.id, p.nif, p.nombre, p.apellido1, p.apellido2, p.fecha_nacimiento, p.sexo, d.nombre AS nombre_departamento, prof.id AS id_profesor
FROM persona p
JOIN profesor prof ON p.id = prof.id_persona
JOIN departamento d ON prof.id_departamento = d.id;


--Vista de Cursos por Profesor:


CREATE VIEW vista_cursos_profesor AS
SELECT a.nombre AS nombre_asignatura, a.creditos, a.tipo, a.curso, a.cuatrimestre, p.id, p.nif, p.nombre AS nombre_profesor, p.apellido1, p.apellido2, ap.id_asignatura AS id_asignatura_profesor
FROM asignatura a
JOIN asignatura_profesor ap ON a.id = ap.id_asignatura
JOIN profesor p ON p.id = ap.id_profesor;


-- Vista de Cursos por Grado:


CREATE VIEW vista_cursos_grado AS
SELECT a.nombre AS nombre_asignatura, a.creditos, a.tipo, a.curso,  a.cuatrimestre, g.nombre AS nombre_grado, ag.id_asignatura AS id_asignatura_grado
FROM asignatura a
JOIN asignatura_grado ag ON a.id = ag.id_asignatura
JOIN grado g ON g.id = ag.id_grado;


-- Vista de Estudiantes Matriculados por Curso Escolar:


CREATE VIEW vista_estudiantes_matriculados_curso_escolar AS
SELECT a.id, a.nif, a.nombre, a.apellido1, a.apellido2, c.anyo_inicio,  c.anyo_fin, asma.id_alumno AS id_alumno_matriculado
FROM persona a
JOIN alumno al ON a.id = al.id_persona
JOIN alumno_se_matricula_asignatura asma ON al.id = asma.id_alumno
JOIN curso_escolar c ON c.id = asma.id_curso_escolar;


-- Vista de Matrículas por Curso y Asignatura:


CREATE VIEW vista_matriculas_curso_asignatura AS
SELECT a.nombre AS nombre_asignatura, a.curso, a.cuatrimestre, c.anyo_inicio,  c.anyo_fin, COUNT(DISTINCT asma.id_alumno) AS numero_matriculas
FROM asignatura a
JOIN asignatura_profesor ap ON a.id = ap.id_asignatura
JOIN alumno_se_matricula_asignatura asma ON a.id = asma.id_asignatura
JOIN curso_escolar c ON c.id = asma.id_curso_escolar
GROUP BY a.nombre, a.curso, a.cuatrimestre, c.anyo_inicio, c.anyo_fin;


-- Vista de Profesores con Más Matrículas:


CREATE VIEW vista_profesores_mas_matriculas AS
SELECT p.id, p.nif, p.nombre, p.apellido1, p.apellido2, COUNT(DISTINCT asma.id_alumno) AS numero_matriculas_total
FROM persona p
JOIN profesor prof ON p.id = prof


-- Vista para obtener la información de contacto de un estudiante:


CREATE VIEW vista_informacion_contacto_estudiante AS
SELECT p.id AS id_persona, p.nif, p.nombre, p.apellido1, p.apellido2, d.calle, d.ciudad, d.codigo_postal, t.numero AS numero_telefono
FROM persona p
JOIN alumno al ON p.id = al.id_persona
JOIN persona_direccion pd ON p.id = pd.id_persona
JOIN direccion d ON d.id = pd.id_direccion
JOIN persona_telefono pt ON p.id = pt.id_persona
JOIN telefono t ON t.id = pt.id_telefono;


-- Vista de Cursos:


CREATE VIEW vista_cursos_simple AS
SELECT a.id, a.nombre, a.creditos, a.tipo, a.curso, a.cuatrimestre
FROM asignatura a;


-- Vista de Profesores: 


CREATE VIEW vista_profesores_simple AS 
SELECT p.id AS id_persona, p.nif, p.nombre, p.apellido1, p.apellido2, prof.id AS id_profesor 
FROM persona p 
JOIN profesor prof ON p.id = prof.id_persona;
