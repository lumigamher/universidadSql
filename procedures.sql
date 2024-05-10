
--Insertar una nueva dirección:--

DELIMITER //

CREATE PROCEDURE insertar_direccion(
    IN calle VARCHAR(50),
    IN ciudad VARCHAR(25),
    IN codigo_postal VARCHAR(10)
)
BEGIN
    INSERT INTO direccion (calle, ciudad, codigo_postal) VALUES (calle, ciudad, codigo_postal);
END //

DELIMITER ;


--Insertar un nuevo teléfono:--

DELIMITER //

CREATE PROCEDURE insertar_telefono(
    IN numero VARCHAR(9)
)
BEGIN
    INSERT INTO telefono (numero) VALUES (numero);
END //

DELIMITER ;


--Insertar una nueva persona:--

DELIMITER //

CREATE PROCEDURE insertar_persona(
    IN nif VARCHAR(9),
    IN nombre VARCHAR(25),
    IN apellido1 VARCHAR(50),
    IN apellido2 VARCHAR(50),
    IN fecha_nacimiento DATE,
    IN sexo ENUM('H', 'M')
)
BEGIN
    INSERT INTO persona (nif, nombre, apellido1, apellido2, fecha_nacimiento, sexo) 
    VALUES (nif, nombre, apellido1, apellido2, fecha_nacimiento, sexo);
END //

DELIMITER ;


-- --Asignar un teléfono a una persona:--

DELIMITER //

CREATE PROCEDURE asignar_telefono_a_persona(
    IN id_persona INT,
    IN id_telefono INT
)
BEGIN
    INSERT INTO persona_telefono (id_persona, id_telefono) VALUES (id_persona, id_telefono);
END //

DELIMITER ;


--Asignar una dirección a una persona:--

DELIMITER //

CREATE PROCEDURE asignar_direccion_a_persona(
    IN id_persona INT,
    IN id_direccion INT
)
BEGIN
    INSERT INTO persona_direccion (id_persona, id_direccion) VALUES (id_persona, id_direccion);
END //

DELIMITER ;


--Insertar un nuevo departamento:--

DELIMITER //

CREATE PROCEDURE insertar_departamento(
    IN nombre VARCHAR(50)
)
BEGIN
    INSERT INTO departamento (nombre) VALUES (nombre);
END //

DELIMITER ;


--Insertar un nuevo profesor:--

DELIMITER //

CREATE PROCEDURE insertar_profesor(
    IN id_persona INT,
    IN id_departamento INT
)
BEGIN
    INSERT INTO profesor (id_persona, id_departamento) VALUES (id_persona, id_departamento);
END //

DELIMITER ;


--Insertar un nuevo alumno:--

DELIMITER //

CREATE PROCEDURE insertar_alumno(
    IN id_persona INT
)
BEGIN
    INSERT INTO alumno (id_persona) VALUES (id_persona);
END //

DELIMITER ;


--Insertar una nueva asignatura:--

DELIMITER //

CREATE PROCEDURE insertar_asignatura(
    IN nombre VARCHAR(100),
    IN creditos FLOAT,
    IN tipo VARCHAR(100),
    IN curso TINYINT,
    IN cuatrimestre TINYINT
)
BEGIN
    INSERT INTO asignatura (nombre, creditos, tipo, curso, cuatrimestre) 
    VALUES (nombre, creditos, tipo, curso, cuatrimestre);
END //

DELIMITER ;


--Matricular un alumno en una asignatura para un curso escolar:--

DELIMITER //

CREATE PROCEDURE matricular_alumno_en_asignatura(
    IN id_alumno INT,
    IN id_asignatura INT,
    IN id_curso_escolar INT
)
BEGIN
    INSERT INTO alumno_se_matricula_asignatura (id_alumno, id_asignatura, id_curso_escolar) 
    VALUES (id_alumno, id_asignatura, id_curso_escolar);
END //

DELIMITER ;

