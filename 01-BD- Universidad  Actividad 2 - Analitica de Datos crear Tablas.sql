-- Actividad 2 Analitica de Datos
-- Corporacion universitaria Iberoamericana
-- Eder STeelt pinzon mateus
-- ID 100127883
-- Epinzon3@ibero.edu.co
-- Creación de la base de datos
CREATE DATABASE IF NOT EXISTS BD_Ibero_Universidad;
USE BD_Ibero_Universidad;

-- Creación de la tabla Programas de Formación
CREATE TABLE IF NOT EXISTS ProgramasFormacion (
    IDPrograma INT PRIMARY KEY AUTO_INCREMENT,
    NombrePrograma VARCHAR(45) NOT NULL,
    Duracion VARCHAR(45) NOT NULL,
    Descripcion VARCHAR(500),
   CONSTRAINT duracion_valida CHECK (Duracion IS NULL OR LENGTH(Duracion) > 0)

);

-- Creación de la tabla Materias
CREATE TABLE IF NOT EXISTS Materias (
    IDMateria INT PRIMARY KEY AUTO_INCREMENT,
    NombreMateria VARCHAR(45) NOT NULL,
    DescripcionMateria VARCHAR(500),
    Creditos INT CHECK (Creditos > 0),
    IDPrograma INT,
    FOREIGN KEY (IDPrograma) REFERENCES ProgramasFormacion(IDPrograma)
);

-- Creación de la tabla Estudiante
CREATE TABLE IF NOT EXISTS Estudiante (
    IDEstudiante INT PRIMARY KEY AUTO_INCREMENT,
    NombreEstudiante VARCHAR(45) NOT NULL,
    DireccionEstudiante VARCHAR(45),
    TelefonoEstudiante INT,
    EmailEstudiante VARCHAR(45) NOT NULL,
    FechaNacimiento DATE,
    IDPrograma INT UNIQUE,
    FOREIGN KEY (IDPrograma) REFERENCES ProgramasFormacion(IDPrograma)
);




-- Creación de la tabla Profesores
CREATE TABLE IF NOT EXISTS Profesores (
    IDProfesor INT PRIMARY KEY AUTO_INCREMENT,
    NombreProfesor VARCHAR(45) NOT NULL,
    DireccionProfesor VARCHAR(45),
    TelefonoProfesor INT,
    EmailProfesor VARCHAR(45) NOT NULL,
    AreaEspecializacion VARCHAR(45),
    CONSTRAINT email_profesor_unique UNIQUE (EmailProfesor)
);

-- Creación de la tabla Cursos
CREATE TABLE IF NOT EXISTS Cursos (
    IDCurso INT PRIMARY KEY AUTO_INCREMENT,
    IDMateria INT UNIQUE,
    IDProfesor INT UNIQUE,
    Semestre INT,
    Horario VARCHAR(45) CHECK (Horario LIKE '%, %')
);

-- Creación de la tabla Clases
CREATE TABLE IF NOT EXISTS Clases (
    IDClase INT PRIMARY KEY AUTO_INCREMENT,
    IDCurso INT UNIQUE,
    Fecha DATE,
    Ubicacion VARCHAR(45),
    Tema VARCHAR(45) NOT NULL
);


-- Creación de la tabla Matricula
CREATE TABLE IF NOT EXISTS Matricula (
    IDMatricula INT PRIMARY KEY AUTO_INCREMENT,
    IDEstudiante INT UNIQUE,
    IDCurso INT UNIQUE,
    FechaMatricula DATE
);





