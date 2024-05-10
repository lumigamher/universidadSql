-- Crear la base de datos
CREATE DATABASE IF NOT EXISTS universidad;
USE universidad;

-- Crear las tablas
CREATE TABLE direccion (
    id INT(10) PRIMARY KEY AUTO_INCREMENT,
    calle VARCHAR(50),
    ciudad VARCHAR(25),
    codigo_postal VARCHAR(10)
);

CREATE TABLE telefono (
    id INT(10) PRIMARY KEY AUTO_INCREMENT,
    numero VARCHAR(9)
);

CREATE TABLE persona (
    id INT(10) PRIMARY KEY AUTO_INCREMENT,
    nif VARCHAR(9),
    nombre VARCHAR(25),
    apellido1 VARCHAR(50),
    apellido2 VARCHAR(50),
    fecha_nacimiento DATE,
    sexo ENUM('H', 'M')
);

CREATE TABLE persona_telefono (
    id_persona INT(10),
    id_telefono INT(10),
    PRIMARY KEY (id_persona, id_telefono),
    FOREIGN KEY (id_persona) REFERENCES persona(id),
    FOREIGN KEY (id_telefono) REFERENCES telefono(id)
);

CREATE TABLE persona_direccion (
    id_persona INT(10),
    id_direccion INT(10),
    PRIMARY KEY (id_persona, id_direccion),
    FOREIGN KEY (id_persona) REFERENCES persona(id),
    FOREIGN KEY (id_direccion) REFERENCES direccion(id)
);
CREATE TABLE profesor (
    id INT(10) PRIMARY KEY AUTO_INCREMENT,
    id_persona INT(10),
    id_departamento INT(10),
    FOREIGN KEY (id_persona) REFERENCES persona(id),
    FOREIGN KEY (id_departamento) REFERENCES departamento(id)
);

CREATE TABLE alumno (
    id INT(10) PRIMARY KEY AUTO_INCREMENT,
    id_persona INT(10),
    FOREIGN KEY (id_persona) REFERENCES persona(id)
);

CREATE TABLE departamento (
    id INT(10) PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50)
);

CREATE TABLE asignatura (
    id INT(10) PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    creditos FLOAT,
    tipo VARCHAR(100),
    curso TINYINT(3),
    cuatrimestre TINYINT(9)
);

CREATE TABLE asignatura_profesor (
    id_asignatura INT(10),
    id_profesor INT(10),
    PRIMARY KEY (id_asignatura, id_profesor),
    FOREIGN KEY (id_asignatura) REFERENCES asignatura(id),
    FOREIGN KEY (id_profesor) REFERENCES profesor(id)
);

CREATE TABLE asignatura_grado (
    id_asignatura INT(10),
    id_grado INT(10),
    PRIMARY KEY (id_asignatura, id_grado),
    FOREIGN KEY (id_asignatura) REFERENCES asignatura(id),
    FOREIGN KEY (id_grado) REFERENCES grado(id)
);

CREATE TABLE grado (
    id INT(10) PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100)
);

CREATE TABLE curso_escolar (
    id INT(10) PRIMARY KEY AUTO_INCREMENT,
    anyo_inicio YEAR(4),
    anyo_fin YEAR(4)
);

CREATE TABLE alumno_se_matricula_asignatura (
    id_alumno INT(10),
    id_asignatura INT(10),
    id_curso_escolar INT(10),
    PRIMARY KEY (id_alumno, id_asignatura, id_curso_escolar),
    FOREIGN KEY (id_alumno) REFERENCES alumno(id),
    FOREIGN KEY (id_asignatura) REFERENCES asignatura(id),
    FOREIGN KEY (id_curso_escolar) REFERENCES curso_escolar(id)
);