-- Actividad 2 analitica de Datos 
-- Corporacion universitaria Iberoamericana
-- Eder STeelt pinzon mateus
-- ID 100127883
-- Epinzon3@ibero.edu.co

-- Ver los registros de las tablas

SELECT * FROM ProgramasFormacion;

-- tabla Materias
SELECT * FROM Materias;

-- tabla Estudiante
SELECT * FROM Estudiante;

-- tabla Profesores
SELECT * FROM Profesores;

-- tabla Cursos
SELECT * FROM Cursos;

-- tabla Clases
SELECT * FROM Clases;

-- tabla Matricula
SELECT * FROM Matricula;

-- tabla Matricula

--  Identificar estudiantes matriculados en cursos del programa Ingeniería Informática

SELECT
    E.IDEstudiante,
    E.NombreEstudiante,
    E.EmailEstudiante,
    P.NombrePrograma AS Programa,
    C.IDCurso,
    M.FechaMatricula
FROM Estudiante E
JOIN Matricula M ON E.IDEstudiante = M.IDEstudiante
JOIN Cursos C ON M.IDCurso = C.IDCurso
JOIN Materias Mat ON C.IDMateria = Mat.IDMateria
JOIN ProgramasFormacion P ON Mat.IDPrograma = P.IDPrograma
WHERE P.NombrePrograma = 'Ingeniería Informática';

-- Usamos varias uniones (JOIN) entre las tablas Estudiante, Matricula, Cursos, Materias, y ProgramasFormacion para obtener la información 
-- Filtra los resultados para incluir solo aquellos estudiantes matriculados en cursos del programa "Ingeniería Informática"

-- Identificar todos los cursos con estudiantes matriculados y el número de estudiantes por curso

SELECT
    C.IDCurso,
    M.IDMatricula,
    E.NombreEstudiante,
    P.NombrePrograma AS Programa,
    COUNT(*) AS NumeroEstudiantes
FROM Cursos C
JOIN Matricula M ON C.IDCurso = M.IDCurso
JOIN Estudiante E ON M.IDEstudiante = E.IDEstudiante
JOIN Materias Mat ON C.IDMateria = Mat.IDMateria
JOIN ProgramasFormacion P ON Mat.IDPrograma = P.IDPrograma
GROUP BY C.IDCurso, M.IDMatricula, E.NombreEstudiante, P.NombrePrograma
ORDER BY C.IDCurso;

-- Usamos varias uniones (JOIN) entre las tablas Cursos, Matricula, Estudiante, Materias, y ProgramasFormacion. Luego, utiliza GROUP BY 
-- para agrupar los resultados por curso y cuenta el número de estudiantes matriculados en cada curso con COUNT(*)

--  Identificar el número de materias matriculadas por cada estudiante

SELECT
    E.IDEstudiante,
    E.NombreEstudiante,
    P.NombrePrograma AS Programa,
    COUNT(M.IDCurso) AS NumeroMateriasMatriculadas
FROM Estudiante E
JOIN Matricula M ON E.IDEstudiante = M.IDEstudiante
JOIN Cursos C ON M.IDCurso = C.IDCurso
JOIN Materias Mat ON C.IDMateria = Mat.IDMateria
JOIN ProgramasFormacion P ON E.IDPrograma = P.IDPrograma
GROUP BY E.IDEstudiante, E.NombreEstudiante, P.NombrePrograma
ORDER BY E.IDEstudiante;

-- Usamos varias uniones (JOIN) entre las tablas Estudiante, Matricula, Cursos, Materias y ProgramasFormacion. 
-- Luego se  utiliza GROUP BY para agrupar los resultados por estudiante y cuenta el número de materias matriculadas por estudiante con COUNT(M.IDCurso).

-- Identificar estudiantes sin materias matriculadas

SELECT
    E.IDEstudiante,
    E.NombreEstudiante
FROM Estudiante E
LEFT JOIN Matricula M ON E.IDEstudiante = M.IDEstudiante
WHERE M.IDMatricula IS NULL
ORDER BY E.IDEstudiante;

-- Usamos un LEFT JOIN entre las tablas Estudiante y Matricula y selecciona aquellos estudiantes para los cuales no hay registros correspondientes en la tabla Matricula. Si el IDMatricula es NULL.

-- Identificar el número de estudiantes por profesor y curso

SELECT
    P.IDProfesor,
    P.NombreProfesor,
    C.IDCurso,
    C.Horario,
    COUNT(M.IDMatricula) AS NumeroEstudiantes
FROM Profesores P
JOIN Cursos C ON P.IDProfesor = C.IDProfesor
LEFT JOIN Matricula M ON C.IDCurso = M.IDCurso
GROUP BY P.IDProfesor, C.IDCurso
ORDER BY P.IDProfesor, C.IDCurso;

-- Usamos un JOIN entre las tablas Profesores, Cursos, y Matricula, y utiliza la función COUNT para contar el número de estudiantes matriculados en cada curso impartido por cada profesor.alter

-- Conclusiones
-- Al observar cada una de las sentencias utilizadas para mostrar los registros de las tablas en nuestra base de datos, se extraen los datos requeridos con el potencial de SQL.
-- Podemos realizar diversas combinaciones de estructuras y parámetros, incluso realizar operaciones para optimizar nuestras búsquedas de información. Sin embargo, como en todo sistema
-- de base de datos, se requiere la inserción de una gran cantidad de información para mejorar los resultados. En este ejemplo, solo se usaron 10 registros por tabla para ejemplificar
-- cada una de las consultas; por ende, los resultados son algo limitados. Con muchos más registros que se inserten en el futuro en nuestra base de datos, podremos realizar
-- más consultas con una mayor complejidad.

