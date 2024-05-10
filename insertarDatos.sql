INSERT INTO departamento (nombre) VALUES
    ('Informática'),
    ('Matemáticas'),
    ('Economía y Empresa'),
    ('Educación'),
    ('Agronomía'),
    ('Química y Física'),
    ('Filología'),
    ('Derecho'),
    ('Biología y Geología');

-- Insertar direcciones
INSERT INTO direccion (calle, ciudad, codigo_postal) VALUES
    ('C/ Mercurio', 'Almería', NULL),
    ('C/ Real del barrio alto', 'Almería', NULL),
    ('C/ Estrella fugaz', 'Almería', NULL),
    ('C/ Júpiter', 'Almería', NULL),
    ('C/ Neptuno', 'Almería', NULL),
    ('C/ Urano', 'Almería', NULL),
    ('C/ Andarax', 'Almería', NULL),
    ('C/ Picos de Europa', 'Almería', NULL),
    ('C/ Los pinos', 'Almería', NULL),
    ('C/ Cabo de Gata', 'Almería', NULL),
    ('C/ Zapillo', 'Almería', NULL);

-- Insertar teléfonos
INSERT INTO telefono (numero) VALUES
    ('618253876'),
    ('950254837'),
    (NULL),
    ('628349590'),
    (NULL),
    ('626351429'),
    ('679837625'),
    ('678652431'),
    ('678652431'),
    ('626652498'),
    ('628452384'),
    ('678812017');

-- Insertar personas (alumnos)
INSERT INTO persona (nif, nombre, apellido1, apellido2, fecha_nacimiento, sexo, id_direccion, id_telefono) VALUES
    ('89542419S', 'Juan', 'Saez', 'Vega', '1992-08-08', 'H', 1, 1),
    ('26902806M', 'Salvador', 'Sánchez', 'Pérez', '1991-03-28', 'H', 2, 2),
    ('17105885A', 'Pedro', 'Heller', 'Pagac', '2000-10-05', 'H', 3, 3),
    ('04233869Y', 'José', 'Koss', 'Bayer', '1998-01-28', 'H', 4, 4),
    ('97258166K', 'Ismael', 'Strosin', 'Turcotte', '1999-05-24', 'H', 5, 5),
    ('82842571K', 'Ramón', 'Herzog', 'Tremblay', '1996-11-21', 'H', 6, 6),
    ('46900725E', 'Daniel', 'Herman', 'Pacocha', '1997-04-26', 'H', 7, 7),
    ('11578526G', 'Inma', 'Lakin', 'Yundt', '1998-09-01', 'M', 8, 8),
    ('79089577Y', 'Juan', 'Gutiérrez', 'López', '1998-01-01', 'H', 9, 8),
    ('41491230N', 'Antonio', 'Domínguez', 'Guerrero', '1999-02-11', 'H', 10, 10),
    ('64753215G', 'Irene', 'Hernández', 'Martínez', '1996-03-12', 'M', 11, 11),
    ('85135690V', 'Sonia', 'Gea', 'Ruiz', '1995-04-13', 'M', 1, 12);

INSERT INTO persona (nif, nombre, apellido1, apellido2, fecha_nacimiento, sexo) VALUES
    ('11016968S', 'Luis', 'Gamboa', 'Hernandez', '1992-08-08', 'H');

-- Insertar alumnos
INSERT INTO alumno (id_persona) 
SELECT id FROM persona 
WHERE nif IN ('89542419S', '26902806M', '17105885A', '04233869Y', '97258166K', '82842571K', '46900725E', '11578526G', '79089577Y', '41491230N', '64753215G', '85135690V');


INSERT INTO alumno (id_persona) 
SELECT id FROM persona 
WHERE nif IN ('11016968S');

    -- Profesor
INSERT INTO persona (nif, nombre, apellido1, apellido2, fecha_nacimiento, sexo, id_direccion, id_telefono) 
VALUES ('11105554G', 'Zoe', 'Ramirez', 'Gea', '1979-08-19', 'M', 1, 1),
       ('38223286T', 'David', 'Schmidt', 'Fisher', '1978-01-19', 'H', 2, 2),
       ('79503962T', 'Cristina', 'Lemke', 'Rutherford', '1977-08-21', 'M', 3, 3),
       ('61142000L', 'Esther', 'Spencer', 'Lakin', '1977-05-19', 'M', 4, NULL),
       ('85366986W', 'Carmen', 'Streich', 'Hirthe', '1971-04-29', 'M', 4, NULL),
       ('73571384L', 'Alfredo', 'Stiedemann', 'Morissette', '1980-02-01', 'H', 6, 4),
       ('82937751G', 'Manolo', 'Hamill', 'Kozey', '1977-01-02', 'H', 1, 5),
       ('80502866Z', 'Alejandro', 'Kohler', 'Schoen', '1980-03-14', 'H', 2, 6),
       ('10485008K', 'Antonio', 'Fahey', 'Considine', '1982-03-18', 'H', 3, NULL),
       ('85869555K', 'Guillermo', 'Ruecker', 'Upton', '1973-05-05', 'H', 4, NULL),
       ('04326833G', 'Micaela', 'Monahan', 'Murray', '1976-02-25', 'H', 5, 7),
       ('79221403L', 'Francesca', 'Schowalter', 'Muller', '1980-10-31', 'H', 6, NULL),
       ('13175769N', 'Pepe', 'Sánchez', 'Ruiz', '1980-10-16', 'H', 1, NULL),
       ('98816696W', 'Juan', 'Guerrero', 'Martínez', '1980-11-21', 'H', 1, NULL),
       ('77194445M', 'María', 'Domínguez', 'Hernández', '1980-12-13', 'M', 2, NULL);

-- Insertar direcciones faltantes
INSERT INTO direccion (calle, ciudad, codigo_postal) VALUES
    ('C/ Marte', 'Almería', NULL),
    ('C/ Venus', 'Almería', NULL),
    ('C/ Saturno', 'Almería', NULL),
    ('C/ Plutón', 'Almería', NULL),
    ('C/ Almanzora', 'Almería', NULL),
    ('C/ Guadalquivir', 'Almería', NULL),
    ('C/ Duero', 'Almería', NULL),
    ('C/ Tajo', 'Almería', NULL),
    ('C/ Sierra de los Filabres', 'Almería', NULL),
    ('C/ Sierra de Gádor', 'Almería', NULL),
    ('C/ Veleta', 'Almería', NULL);

-- Insertar teléfonos faltantes
INSERT INTO telefono (numero) VALUES
    ('618223876'),
    ('678516294'),
    ('669162534'),
    ('950896725'),
    ('950263514'),
    ('668726354'),
    ('662765413');

ALTER TABLE persona MODIFY id_telefono INT(10) NULL;


-- Insertar profesores
INSERT INTO profesor (id_persona, id_departamento)
SELECT id, 1 FROM persona WHERE nif IN ('11105554G', '82937751G', '13175769N', '98816696W');
INSERT INTO profesor (id_persona, id_departamento)
SELECT id, 2 FROM persona WHERE nif IN ('38223286T', '80502866Z', '77194445M');
INSERT INTO profesor (id_persona, id_departamento)
SELECT id, 3 FROM persona WHERE nif IN ('79503962T', '10485008K');
INSERT INTO profesor (id_persona, id_departamento)
SELECT id, 4 FROM persona WHERE nif IN ('61142000L', '85366986W', '85869555K');
INSERT INTO profesor (id_persona, id_departamento)
SELECT id, 5 FROM persona WHERE nif = '04326833G';
INSERT INTO profesor (id_persona, id_departamento)
SELECT id, 6 FROM persona WHERE nif = '73571384L';
INSERT INTO profesor (id_persona, id_departamento)
SELECT id, 7 FROM persona WHERE nif = '79221403L';

-- Insertar grados
INSERT INTO grado (nombre) VALUES
    ('Grado en Ingeniería Agrícola (Plan 2015)'),
    ('Grado en Ingeniería Eléctrica (Plan 2014)'),
    ('Grado en Ingeniería Electrónica Industrial (Plan 2010)'),
    ('Grado en Ingeniería Informática (Plan 2015)'),
    ('Grado en Ingeniería Mecánica (Plan 2010)'),
    ('Grado en Ingeniería Química Industrial (Plan 2010)'),
    ('Grado en Biotecnología (Plan 2015)'),
    ('Grado en Ciencias Ambientales (Plan 2009)'),
    ('Grado en Matemáticas (Plan 2010)'),
    ('Grado en Química (Plan 2009)');

    -- Insertar asignaturas
INSERT INTO asignatura (nombre, creditos, tipo, curso, cuatrimestre) VALUES
    ('Álgegra lineal y matemática discreta', 6, 'básica', 1, 1),
    ('Cálculo', 6, 'básica', 1, 1),
    ('Física para informática', 6, 'básica', 1, 1),
    ('Introducción a la programación', 6, 'básica', 1, 1),
    ('Organización y gestión de empresas', 6, 'básica', 1, 1),
    ('Estadística', 6, 'básica', 1, 2),
    ('Estructura y tecnología de computadores', 6, 'básica', 1, 2),
    ('Fundamentos de electrónica', 6, 'básica', 1, 2),
    ('Lógica y algorítmica', 6, 'básica', 1, 2),
    ('Metodología de la programación', 6, 'básica', 1, 2),
    ('Arquitectura de Computadores', 6, 'básica', 2, 1),
    ('Estructura de Datos y Algoritmos I', 6, 'obligatoria', 2, 1),
    ('Ingeniería del Software', 6, 'obligatoria', 2, 1),
    ('Sistemas Inteligentes', 6, 'obligatoria', 2, 1),
    ('Sistemas Operativos', 6, 'obligatoria', 2, 1),
    ('Bases de Datos', 6, 'básica', 2, 2),
    ('Estructura de Datos y Algoritmos II', 6, 'obligatoria', 2, 2),
    ('Fundamentos de Redes de Computadores', 6, 'obligatoria', 2, 2),
    ('Planificación y Gestión de Proyectos Informáticos', 6, 'obligatoria', 2, 2),
    ('Programación de Servicios Software', 6, 'obligatoria', 2, 2),
    ('Desarrollo de interfaces de usuario', 6, 'obligatoria', 3, 1),
    ('Ingeniería de Requisitos', 6, 'optativa', 3, 1),
    ('Integración de las Tecnologías de la Información en las Organizaciones', 6, 'optativa', 3, 1),
    ('Modelado y Diseño del Software 1', 6, 'optativa', 3, 1),
    ('Multiprocesadores', 6, 'optativa', 3, 1),
    ('Seguridad y cumplimiento normativo', 6, 'optativa', 3, 1),
    ('Sistema de Información para las Organizaciones', 6, 'optativa', 3, 1),
    ('Tecnologías web', 6, 'optativa', 3, 1),
    ('Teoría de códigos y criptografía', 6, 'optativa', 3, 1),
    ('Administración de bases de datos', 6, 'optativa', 3, 2),
    ('Herramientas y Métodos de Ingeniería del Software', 6, 'optativa', 3, 2),
    ('Informática industrial y robótica', 6, 'optativa', 3, 2),
    ('Ingeniería de Sistemas de Información', 6, 'optativa', 3, 2),
    ('Modelado y Diseño del Software 2', 6, 'optativa', 3, 2),
    ('Negocio Electrónico', 6, 'optativa', 3, 2),
    ('Periféricos e interfaces', 6, 'optativa', 3, 2),
    ('Sistemas de tiempo real', 6, 'optativa', 3, 2),
    ('Tecnologías de acceso a red', 6, 'optativa', 3, 2),
    ('Tratamiento digital de imágenes', 6, 'optativa', 3, 2),
    ('Administración de redes y sistemas operativos', 6, 'optativa', 4, 1),
    ('Almacenes de Datos', 6, 'optativa', 4, 1),
    ('Fiabilidad y Gestión de Riesgos', 6, 'optativa', 4, 1),
    ('Líneas de Productos Software', 6, 'optativa', 4, 1),
    ('Procesos de Ingeniería del Software 1', 6, 'optativa', 4, 1),
    ('Tecnologías multimedia', 6, 'optativa', 4, 1),
    ('Análisis y planificación de las TI', 6, 'optativa', 4, 2),
    ('Desarrollo Rápido de Aplicaciones', 6, 'optativa', 4, 2),
    ('Gestión de la Calidad y de la Innovación Tecnológica', 6, 'optativa', 4, 2),
    ('Inteligencia del Negocio', 6, 'optativa', 4, 2),
    ('Procesos de Ingeniería del Software 2', 6, 'optativa', 4, 2),
    ('Seguridad Informática', 6, 'optativa', 4, 2),
    ('Biologia celular', 6, 'básica', 1, 1),
    ('Física', 6, 'básica', 1, 1),
    ('Matemáticas I', 6, 'básica', 1, 1),
    ('Química general', 6, 'básica', 1, 1),
    ('Química orgánica', 6, 'básica', 1, 1),
    ('Biología vegetal y animal', 6, 'básica', 1, 2),
    ('Bioquímica', 6, 'básica', 1, 2),
    ('Genética', 6, 'básica', 1, 2),
    ('Matemáticas II', 6, 'básica', 1, 2),
    ('Microbiología', 6, 'básica', 1, 2),
    ('Botánica agrícola', 6, 'obligatoria', 2, 1),
    ('Fisiología vegetal', 6, 'obligatoria', 2, 1),
    ('Genética molecular', 6, 'obligatoria', 2, 1),
    ('Ingeniería bioquímica', 6, 'obligatoria', 2, 1),
    ('Termodinámica y cinética química aplicada', 6, 'obligatoria', 2, 1),
    ('Biorreactores', 6, 'obligatoria', 2, 2),
    ('Biotecnología microbiana', 6, 'obligatoria', 2, 2),
    ('Ingeniería genética', 6, 'obligatoria', 2, 2),
    ('Inmunología', 6, 'obligatoria', 2, 2),
    ('Virología', 6, 'obligatoria', 2, 2),
    ('Bases moleculares del desarrollo vegetal', 4.5, 'obligatoria', 3, 1),
    ('Fisiología animal', 4.5, 'obligatoria', 3, 1),
    ('Bases moleculares del desarrollo vegetal', 4.5, 'obligatoria', 3, 1),
    ('Fisiología animal', 4.5, 'obligatoria', 3, 1),
    ('Metabolismo y biosíntesis de biomoléculas', 6, 'obligatoria', 3, 1),
    ('Operaciones de separación', 6, 'obligatoria', 3, 1),
    ('Patología molecular de plantas', 4.5, 'obligatoria', 3, 1),
    ('Técnicas instrumentales básicas', 4.5, 'obligatoria', 3, 1),
    ('Bioinformática', 4.5, 'obligatoria', 3, 2),
    ('Biotecnología de los productos hortofrutículas', 4.5, 'obligatoria', 3, 2),
    ('Biotecnología vegetal', 6, 'obligatoria', 3, 2),
    ('Genómica y proteómica', 4.5, 'obligatoria', 3, 2),
    ('Procesos biotecnológicos', 6, 'obligatoria', 3, 2),
    ('Técnicas instrumentales avanzadas', 4.5, 'obligatoria', 3, 2);



-- Relacionar asignaturas con profesores
INSERT INTO asignatura_profesor (id_asignatura, id_profesor)
SELECT a.id, p.id
FROM asignatura a
CROSS JOIN profesor p
WHERE a.nombre IN ('Álgegra lineal y matemática discreta', 'Cálculo', 'Física para informática', 'Introducción a la programación', 'Organización y gestión de empresas', 'Estadística', 'Estructura y tecnología de computadores', 'Fundamentos de electrónica', 'Lógica y algorítmica', 'Metodología de la programación')
AND p.id_departamento = 1;
INSERT INTO asignatura_profesor (id_asignatura, id_profesor)
SELECT a.id, p.id
FROM asignatura a
CROSS JOIN profesor p
WHERE a.nombre IN ('Arquitectura de Computadores', 'Estructura de Datos y Algoritmos I', 'Sistemas Inteligentes')
AND p.id_departamento = 3;
INSERT INTO asignatura_profesor (id_asignatura, id_profesor)
SELECT a.id, p.id
FROM asignatura a
CROSS JOIN profesor p
WHERE a.nombre IN ('Ingeniería del Software', 'Sistemas Operativos', 'Bases de Datos', 'Estructura de Datos y Algoritmos II', 'Programación de Servicios Software', 'Desarrollo de interfaces de usuario')
AND p.id_departamento = 6;

-- Relacionar asignaturas con grados
INSERT INTO asignatura_grado (id_asignatura, id_grado)
SELECT a.id, 4 -- Grado en Ingeniería Informática
FROM asignatura a
WHERE a.nombre IN (
    'Álgegra lineal y matemática discreta', 'Cálculo', 'Física para informática', 'Introducción a la programación',
    'Organización y gestión de empresas', 'Estadística', 'Estructura y tecnología de computadores', 'Fundamentos de electrónica',
    'Lógica y algorítmica', 'Metodología de la programación', 'Arquitectura de Computadores', 'Estructura de Datos y Algoritmos I',
    'Ingeniería del Software', 'Sistemas Inteligentes', 'Sistemas Operativos', 'Bases de Datos', 'Estructura de Datos y Algoritmos II',
    'Fundamentos de Redes de Computadores', 'Planificación y Gestión de Proyectos Informáticos', 'Programación de Servicios Software',
    'Desarrollo de interfaces de usuario'
);

INSERT INTO asignatura_grado (id_asignatura, id_grado)
SELECT a.id, 4 -- Grado en Ingeniería Informática
FROM asignatura a
WHERE a.tipo = 'optativa';

INSERT INTO asignatura_grado (id_asignatura, id_grado)
SELECT a.id, 7 -- Grado en Biotecnología
FROM asignatura a
WHERE a.nombre IN (
    'Biologia celular', 'Física', 'Matemáticas I', 'Química general', 'Química orgánica', 'Biología vegetal y animal',
    'Bioquímica', 'Genética', 'Matemáticas II', 'Microbiología', 'Botánica agrícola', 'Fisiología vegetal', 'Genética molecular',
    'Ingeniería bioquímica', 'Termodinámica y cinética química aplicada', 'Biorreactores', 'Biotecnología microbiana',
    'Ingeniería genética', 'Inmunología', 'Virología', 'Bases moleculares del desarrollo vegetal', 'Fisiología animal',
    'Metabolismo y biosíntesis de biomoléculas', 'Operaciones de separación', 'Patología molecular de plantas',
    'Técnicas instrumentales básicas', 'Bioinformática', 'Biotecnología de los productos hortofrutículas', 'Biotecnología vegetal',
    'Genómica y proteómica', 'Procesos biotecnológicos', 'Técnicas instrumentales avanzadas'
);

-- Lista de asignaturas para el Grado en Ingeniería Agrícola (Plan 2015)
INSERT INTO asignatura_grado (id_asignatura, id_grado)
SELECT a.id, 1
FROM asignatura a
WHERE a.nombre IN (
    'Biologia celular',
    'Física',
    'Matemáticas I',
    'Química general',
    'Química orgánica',
    'Biología vegetal y animal',
    'Bioquímica',
    'Genética',
    'Matemáticas II',
    'Microbiología',
    'Botánica agrícola',
    'Fisiología vegetal',
    'Genética molecular',
    'Ingeniería bioquímica',
    'Termodinámica y cinética química aplicada',
    'Biorreactores',
    'Biotecnología microbiana',
    'Ingeniería genética',
    'Inmunología',
    'Virología',
    'Bases moleculares del desarrollo vegetal',
    'Fisiología animal',
    'Metabolismo y biosíntesis de biomoléculas',
    'Operaciones de separación',
    'Patología molecular de plantas',
    'Técnicas instrumentales básicas',
    'Bioinformática',
    'Biotecnología de los productos hortofrutículas',
    'Biotecnología vegetal',
    'Genómica y proteómica',
    'Procesos biotecnológicos',
    'Técnicas instrumentales avanzadas'
);

-- Relacionar asignaturas con el Grado en Ingeniería Eléctrica (Plan 2014)
INSERT INTO asignatura_grado (id_asignatura, id_grado)
SELECT a.id, 2
FROM asignatura a
WHERE a.nombre IN (
    'Fundamentos de electricidad y magnetismo',
    'Circuitos eléctricos',
    'Electrónica básica',
    'Máquinas eléctricas',
    'Sistemas de control',
    'Electrónica de potencia',
    'Sistemas digitales',
    'Teoría de la señal y sistemas',
    'Microelectrónica',
    'Electromagnetismo aplicado',
    'Instalaciones eléctricas',
    'Diseño de sistemas electrónicos',
    'Sistemas de potencia',
    'Robótica industrial',
    'Energías renovables',
    'Prácticas en empresa',
    'Trabajo fin de grado'
);

-- Relacionar asignaturas con el Grado en Ingeniería Electrónica Industrial (Plan 2010)
INSERT INTO asignatura_grado (id_asignatura, id_grado)
SELECT a.id, 3
FROM asignatura a
WHERE a.nombre IN (
    'Electrónica Analógica',
    'Electrónica Digital',
    'Microcontroladores',
    'Instrumentación y Control',
    'Sistemas Electrónicos de Potencia',
    'Comunicaciones Industriales',
    'Electrónica Industrial',
    'Robótica Industrial',
    'Automatización Industrial',
    'Sistemas Embebidos',
    'Sistemas de Control Digital',
    'Procesado Digital de Señales',
    'Sistemas de Telecomunicación Industrial',
    'Gestión de Proyectos Electrónicos',
    'Diseño Electrónico Asistido por Ordenador',
    'Prácticas en Empresa',
    'Trabajo Fin de Grado'
);

-- Relacionar asignaturas con el Grado en Ingeniería Informática (Plan 2015)
INSERT INTO asignatura_grado (id_asignatura, id_grado)
SELECT a.id, 4
FROM asignatura a
WHERE a.nombre IN (
    'Fundamentos de Programación',
    'Estructuras de Datos',
    'Bases de Datos',
    'Programación Orientada a Objetos',
    'Ingeniería del Software I',
    'Sistemas Operativos',
    'Redes de Computadores',
    'Matemáticas Discretas',
    'Probabilidad y Estadística',
    'Análisis y Diseño de Algoritmos',
    'Arquitectura de Computadores',
    'Interacción Persona-Ordenador',
    'Desarrollo Web',
    'Computación Distribuida',
    'Seguridad Informática',
    'Inteligencia Artificial',
    'Prácticas Externas',
    'Trabajo Fin de Grado'
);

-- Relacionar asignaturas con el Grado en Ingeniería Mecánica (Plan 2010)
INSERT INTO asignatura_grado (id_asignatura, id_grado)
SELECT a.id, 5
FROM asignatura a
WHERE a.nombre IN (
    'Expresión Gráfica',
    'Fundamentos de Mecánica',
    'Álgebra Lineal y Cálculo',
    'Termodinámica',
    'Electrotecnia',
    'Mecánica de Fluidos',
    'Resistencia de Materiales',
    'Máquinas Térmicas',
    'Tecnología de Fabricación',
    'Mecánica de Materiales',
    'Diseño de Máquinas',
    'Mecánica del Medio Continuo',
    'Sistemas Mecánicos',
    'Proyectos Mecánicos',
    'Prácticas en Empresa',
    'Trabajo Fin de Grado'
);

-- Relacionar asignaturas con el Grado en Ingeniería Química Industrial (Plan 2010)
INSERT INTO asignatura_grado (id_asignatura, id_grado)
SELECT a.id, 6
FROM asignatura a
WHERE a.nombre IN (
    'Química General',
    'Física',
    'Matemáticas I',
    'Química Orgánica',
    'Termodinámica Química',
    'Cinética Química',
    'Operaciones Básicas de Ingeniería Química',
    'Transferencia de Masa y Energía',
    'Ingeniería de Reactores',
    'Ingeniería de Separaciones',
    'Ingeniería de Procesos Químicos',
    'Ingeniería Ambiental',
    'Laboratorio de Operaciones Básicas de Ingeniería Química',
    'Laboratorio de Ingeniería de Reactores y Separaciones',
    'Prácticas en Empresa',
    'Trabajo Fin de Grado'
);

-- Relacionar asignaturas con el Grado en Biotecnología (Plan 2015)
INSERT INTO asignatura_grado (id_asignatura, id_grado)
SELECT a.id, 7
FROM asignatura a
WHERE a.nombre IN (
    'Biología Celular',
    'Fundamentos de Química Orgánica y Bioquímica',
    'Fundamentos de Matemáticas',
    'Fundamentos Físicos y Estadísticos para la Biotecnología',
    'Introducción a la Biotecnología',
    'Genética Molecular y Microbiana',
    'Microbiología General',
    'Bioinformática y Análisis de Datos Biológicos',
    'Métodos Instrumentales en Biotecnología',
    'Ingeniería de Bioprocesos',
    'Biología Molecular y Celular',
    'Tecnología del ADN Recombinante',
    'Inmunología',
    'Biotecnología Industrial',
    'Biotecnología Agroalimentaria',
    'Técnicas Avanzadas en Biotecnología',
    'Genómica y Proteómica',
    'Prácticas Externas',
    'Trabajo Fin de Grado'
);

-- Relacionar asignaturas con el Grado en Ciencias Ambientales (Plan 2009)
INSERT INTO asignatura_grado (id_asignatura, id_grado)
SELECT a.id, 8
FROM asignatura a
WHERE a.nombre IN (
    'Introducción a las Ciencias Ambientales',
    'Fundamentos de Biología',
    'Fundamentos de Química',
    'Fundamentos de Física',
    'Matemáticas',
    'Estadística Aplicada a las Ciencias Ambientales',
    'Geología Ambiental',
    'Ecología',
    'Microbiología Ambiental',
    'Botánica',
    'Zoología',
    'Edafología',
    'Climatología',
    'Hidrología',
    'Contaminación Atmosférica',
    'Contaminación del Agua',
    'Contaminación del Suelo',
    'Gestión Ambiental',
    'Evaluación de Impacto Ambiental',
    'Ordenación del Territorio',
    'Educación Ambiental',
    'Legislación Ambiental',
    'Prácticas Externas',
    'Trabajo Fin de Grado'
);

-- Relacionar asignaturas con el Grado en Matemáticas (Plan 2010)
INSERT INTO asignatura_grado (id_asignatura, id_grado)
SELECT a.id, 9
FROM asignatura a
WHERE a.nombre IN (
    'Álgebra Lineal I',
    'Cálculo I',
    'Álgebra Lineal II',
    'Cálculo II',
    'Álgebra Lineal III',
    'Cálculo III',
    'Fundamentos de Matemáticas Discretas',
    'Ecuaciones Diferenciales Ordinarias',
    'Análisis Matemático I',
    'Análisis Matemático II',
    'Geometría Diferencial',
    'Teoría de Números',
    'Topología',
    'Probabilidad',
    'Estadística Matemática',
    'Optimización',
    'Ecuaciones en Derivadas Parciales',
    'Variable Compleja',
    'Geometría Algebraica',
    'Modelización Matemática',
    'Métodos Numéricos',
    'Prácticas Externas',
    'Trabajo Fin de Grado'
);

-- Relacionar asignaturas con el Grado en Química (Plan 2009)
INSERT INTO asignatura_grado (id_asignatura, id_grado)
SELECT a.id, 10
FROM asignatura a
WHERE a.nombre IN (
    'Química General',
    'Física',
    'Matemáticas I',
    'Matemáticas II',
    'Química Orgánica',
    'Química Inorgánica',
    'Química Analítica',
    'Termodinámica y Cinética Química',
    'Estructura de la Materia',
    'Espectroscopía',
    'Métodos Experimentales en Química',
    'Química de los Compuestos de Coordinación',
    'Química de Superficies',
    'Química Industrial',
    'Química de los Materiales',
    'Bioquímica',
    'Química Ambiental',
    'Química Cuántica',
    'Química Computacional',
    'Química de los Alimentos',
    'Química Forense',
    'Química Nuclear',
    'Química Verde',
    'Prácticas en Laboratorio',
    'Trabajo Fin de Grado'
);

INSERT INTO curso_escolar (anyo_inicio, anyo_fin) VALUES 
(2014, 2015),
(2015, 2016),
(2016, 2017),
(2017, 2018);

INSERT INTO alumno_se_matricula_asignatura (id_alumno, id_asignatura, id_curso_escolar) VALUES 
(1, 1, 1), (1, 2, 1), (1, 3, 1), (1, 4, 1), (1, 5, 1), (1, 6, 1), (1, 7, 1), (1, 8, 1), (1, 9, 1), (1, 10, 1),
(1, 1, 2), (1, 2, 2), (1, 3, 2),
(1, 1, 3), (1, 2, 3), (1, 3, 3),
(1, 1, 4), (1, 2, 4), (1, 3, 4),
(2, 1, 1), (2, 2, 1), (2, 3, 1),
(4, 1, 1), (4, 2, 1), (4, 3, 1),
(4, 1, 2), (4, 2, 2), (4, 3, 2), (4, 4, 2), (4, 5, 2), (4, 6, 2), (4, 7, 2), (4, 8, 2), (4, 9, 2), (4, 10, 2);



INSERT INTO persona_telefono (id_persona, id_telefono)
SELECT id, id_telefono
FROM persona
WHERE id_telefono IS NOT NULL;

INSERT INTO persona_direccion (id_persona, id_direccion)
SELECT id, id_direccion
FROM persona
WHERE id_direccion IS NOT NULL;

ALTER TABLE persona
DROP COLUMN id_telefono;

ALTER TABLE persona DROP FOREIGN KEY persona_ibfk_2;

ALTER TABLE persona DROP COLUMN id_telefono;
