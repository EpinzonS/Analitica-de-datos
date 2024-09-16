-- tabla programas
INSERT INTO ProgramasFormacion (NombrePrograma, Duracion, Descripcion)
VALUES
    ('Ingeniería Informática', '5 años', 'Programa de Ingeniería Informática'),
    ('Ciencias de la Computación', '4 años', 'Programa de Ciencias de la Computación'),
    ('Matemáticas Aplicadas', '3 años', 'Programa de Matemáticas Aplicadas'),
    ('Biología Molecular', '6 años', 'Programa de Biología Molecular'),
    ('Química Avanzada', '4 años', 'Programa de Química Avanzada'),
    ('Arquitectura Sostenible', '5 años', 'Programa de Arquitectura Sostenible'),
    ('Diseño Gráfico', '3 años', 'Programa de Diseño Gráfico'),
    ('Inglés Avanzado', '2 años', 'Programa de Inglés Avanzado'),
    ('Historia del Arte', '4 años', 'Programa de Historia del Arte'),
    ('Psicología Clínica', '5 años', 'Programa de Psicología Clínica');

-- tabla Materias
INSERT INTO Materias (NombreMateria, DescripcionMateria, Creditos, IDPrograma)
VALUES
    ('Programación Avanzada', 'Aprender a programar en varios lenguajes', 4, 1),
    ('Algoritmos y Estructuras de Datos', 'Estudio de algoritmos y estructuras de datos', 3, 1),
    ('Cálculo Integral', 'Conceptos avanzados de cálculo', 4, 3),
    ('Genética Molecular', 'Estudio de la genética a nivel molecular', 5, 4),
    ('Química Orgánica', 'Compuestos orgánicos y reacciones', 4, 5),
    ('Diseño Sustentable', 'Principios de diseño sostenible', 3, 6),
    ('Ilustración Digital', 'Técnicas de ilustración en entornos digitales', 3, 7),
    ('Conversación Avanzada', 'Práctica avanzada de inglés', 2, 8),
    ('Historia del Renacimiento', 'Estudio del arte durante el Renacimiento', 4, 9),
    ('Psicopatología', 'Estudio de trastornos psicológicos', 5, 10);

-- tabla Estudiantes
INSERT INTO Estudiante (NombreEstudiante, DireccionEstudiante, TelefonoEstudiante, EmailEstudiante, FechaNacimiento, IDPrograma)
VALUES
    ('José Rodríguez', 'Calle Principal 123', 123456789, 'jose@gmail.com', '1998-05-15', 1),
    ('Carlos López', 'Avenida Central 456', 987654321, 'carlos@gmail.com', '1999-02-28', 2),
    ('Pablo Martínez', 'Carrera 7 890', 555555555, 'pablo@gmail.com', '1997-10-10', 3),
    ('Luisa García', 'Calle Sur 321', 777777777, 'luisa@gmail.com', '2000-07-22', 4),
    ('Ana Fernández', 'Avenida Norte 567', 888888888, 'ana@gmail.com', '1996-12-05', 5),
    ('María Pérez', 'Calle Este 987', 999999999, 'maria@gmail.com', '1999-08-18', 6),
    ('Elena Sánchez', 'Carrera Oeste 654', 111111111, 'elena@gmail.com', '1997-03-30', 7),
    ('Sofía Torres', 'Calle 3 210', 222222222, 'sofia@gmail.com', '1998-06-12', 8),
    ('Javier Ruiz', 'Avenida 8 543', 333333333, 'javier@gmail.com', '1996-09-25', 9),
    ('Lucía Gómez', 'Carrera 12 876', 444444444, 'lucia@gmail.com', '2000-01-08', 10);



-- tabla Profesores
INSERT INTO Profesores (NombreProfesor, DireccionProfesor, TelefonoProfesor, EmailProfesor, AreaEspecializacion)
VALUES
    ('Miguel Ramírez', 'Calle Principal 111', 111111111, 'miguel.ramirez@ibero.edu', 'Inteligencia Artificial'),
    ('Adriana Herrera', 'Avenida Central 222', 222222222, 'adriana.herrera@ibero.edu', 'Biología Molecular'),
    ('Gabriel Soto', 'Carrera 7 333', 333333333, 'gabriel.soto@ibero.edu', 'Diseño Gráfico'),
    ('Isabel Torres', 'Calle Sur 444', 444444444, 'isabel.torres@ibero.edu', 'Química Orgánica'),
    ('Fernando Castro', 'Avenida Norte 555', 555555555, 'fernando.castro@ibero.edu', 'Arquitectura Sostenible'),
    ('Laura Díaz', 'Calle Este 666', 666666666, 'laura.diaz@ibero.edu', 'Historia del Arte'),
    ('Javier Núñez', 'Carrera Oeste 777', 777777777, 'javier.nunez@ibero.edu', 'Inglés Avanzado'),
    ('Silvia Gómez', 'Calle 3 888', 888888888, 'silvia.gomez@ibero.edu', 'Psicología Clínica'),
    ('Andrés Vargas', 'Avenida 8 999', 999999999, 'andres.vargas@ibero.edu', 'Programación Avanzada'),
    ('Carolina Mendoza', 'Carrera 12 000', 123456789, 'carolina.mendoza@ibero.edu', 'Matemáticas Aplicadas');
-- tabla Cursos
INSERT INTO Cursos (IDMateria, IDProfesor, Semestre, Horario)
VALUES
    (1, 1, 1, 'Lunes y Miércoles, 10:00 AM - 12:00 PM'),
    (2, 2, 2, 'Martes y Jueves, 2:00 PM - 4:00 PM'),
    (3, 3, 1, 'Lunes, 4:00 PM - 6:00 PM'),
    (4, 4, 2, 'Miércoles, 8:00 AM - 10:00 AM'),
    (5, 5, 1, 'Viernes, 10:00 AM - 12:00 PM'),
    (6, 6, 2, 'Jueves, 4:00 PM - 6:00 PM'),
    (7, 7, 1, 'Martes, 10:00 AM - 12:00 PM'),
    (8, 8, 2, 'Lunes, 2:00 PM - 4:00 PM'),
    (9, 9, 1, 'Miércoles, 6:00 PM - 8:00 PM'),
    (10, 10, 2, 'Viernes, 8:00 AM - 10:00 AM');

-- tabla Clases
INSERT INTO Clases (IDCurso, Fecha, Ubicacion, Tema)
VALUES
    (1, '2023-12-01', 'Aula 101', 'Introducción a la Programación'),
    (2, '2023-12-02', 'Aula 102', 'Algoritmos Avanzados'),
    (3, '2023-12-03', 'Aula 103', 'Cálculo Integral: Teoremas'),
    (4, '2023-12-04', 'Aula 104', 'Genética Molecular: Principios'),
    (5, '2023-12-05', 'Aula 105', 'Reacciones Químicas'),
    (6, '2023-12-06', 'Aula 106', 'Diseño Sostenible en la Arquitectura'),
    (7, '2023-12-07', 'Aula 107', 'Ilustración Digital: Técnicas Avanzadas'),
    (8, '2023-12-08', 'Aula 108', 'Conversación Avanzada: Temas Actuales'),
    (9, '2023-12-09', 'Aula 109', 'Historia del Renacimiento: Arte y Cultura'),
    (10, '2023-12-10', 'Aula 110', 'Psicopatología: Casos Clínicos');

-- tabla Matrícula
INSERT INTO Matricula (IDEstudiante, IDCurso, FechaMatricula)
VALUES
    (1, 1, '2023-11-15'),
    (2, 2, '2023-11-16'),
    (3, 3, '2023-11-17'),
    (4, 4, '2023-11-18'),
    (5, 5, '2023-11-19'),
    (6, 6, '2023-11-20'),
    (7, 7, '2023-11-21'),
    (8, 8, '2023-11-22'),
    (9, 9, '2023-11-23'),
    (10, 10, '2023-11-24');
