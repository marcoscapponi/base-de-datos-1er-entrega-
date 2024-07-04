
-- CREATE SCHEMA Universidad;
USE

CREATE TABLE Profesiones 
(ProfesionesID INT NOT NULL AUTO_INCREMENT,
Duracion INT NOT NULL,
Precio FLOAT NOT NULL,
CantMaterias INT NOT NULL,
Profesiones VARCHAR(50) NOT NULL,
PRIMARY KEY (ProfesionesID)
);

INSERT INTO profesiones (DuracionAnio, Precio, CantMaterias, Profesiones)
Values
(5, 1500000, 40, 'Kinesiologia'),
(5, 1300000, 42, 'Medicina'),
(5, 1100000, 40, 'Nutricion'),
(5, 1100000, 40, 'Psicologia'),
(3, 700000, 30, 'Enfermeria'),
(5, 200000, 45, 'Odontologia'),
(5, 170000, 40, 'Bioquimica'),
(4, 140000, 38, 'Farmacia');

CREATE TABLE Encargado
(EncargadoID INT NOT NULL auto_increment,
 Apellido VARCHAR(30) NOT NULL,
 Correo VARCHAR(50) NOT NULL,
 PRIMARY KEY (EncargadoID)
 );

ALTER TABLE profesiones CHANGE Duracion duracionAnio int;

INSERT INTO encargado (Apellido, Correo)
VALUES
('Dominguez', 'robdom@gmail.com'),
('Cortez', 'Cortez78@gmail.com'),
('Herrera', 'MH@gmail.com'),
('Grasso', 'GrassoRoberto@gmail.com'),
('Vasco', 'VVasco@gmail.com'),
('Piciana', 'jpiciana@gmail.com'),
('Rey', 'carlarey@gmail.com'),
('Krauss', 'ivana@gmail.com'),
('Ramognino', 'LoloR@gmail.com'),
('Hadid', 'FedeHadid@gmail.com'),
('Capponi', 'PabloCapponi@gmail.com'),
('Goonzalez', 'PabloGon@gmail.com'),
('Fernandez', 'ClaudioFer@gmail.com'),
('Riquelme', 'RomanRiq@gmail.com'),
('Palermo', 'PalermoMartin@gmail.com'),
('Nandez', 'NNandez@gmail.com'),
('Romero', 'DieRomero@gmail.com'),
('Benedeto', 'DBenedeto@gmail.com'),
('Medina', 'MateoMedina@gmail.com'),
('Langoni', 'LLangoni@gmail.com');

CREATE TABLE Staff
(DocentesID INT NOT NULL AUTO_INCREMENT,
Apellido VARCHAR(30) NOT NULL,
Asignatura VARCHAR(50) NOT NULL,
Encargado INT NOT NULL,
FechaDeIngreso DATE NOT NULL,
Profesion INT NOT NULL,
Email VARCHAR(50) NOT NULL,
PRIMARY KEY (DocentesID),
FOREIGN KEY (Encargado) REFERENCES Encargado(EncargadoID),
FOREIGN KEY (Profesion) REFERENCES Profesiones(ProfesionesID)
);

INSERT INTO Staff (Apellido, Asignatura, encargado, fechaDeIngreso, carreras, EMail)
VALUES
('Salatino', 'Anatomia', 3, '2010-02-01', 2, 'gabisalatino@gmail.com'),
('Ramos', 'Fisiologia', 1, '2016-02-01', 1, 'mariaramos@gmail.com'),
('Galati', 'nutricion 2', 4, '2005-08-03', 3, 'adrigalati@gmail.com'),
('Montes de Oca', 'Clinica', 1, '2018-01-03', 2, 'alfremdo@gmail.com'),
('Cavanna', 'psicoanalisis 1', 5, '2012-08-04', 4, 'joacavanna@gmail.com'),
('Ortiz', 'Protesis fija', 10, '2018-04-14', 6, 'MIOrtiz@gmail.com'),
('Meana', 'Bioetica', 7, '2006-12-05', 6, 'GuilleMeana@gmail.com'),
('Alario', 'Farmacia 2', 15, '2010-03-06', 8,  'LucasAlario@gmail.com'),
('Pratto', 'quimica avanzada', 11, '2013-03-04', 7, 'LPratto@gmail.com'),
('Ponzio', 'Histologia y Embriologia', 19, '2009-09-27', 1, 'LeoPonzio@gmail.com'),
('Armani', 'Biologia', 15, '2022-03-01', 8, 'MaArmani@gmail.com'),
('Barco', 'Fisica', 13, '2017-08-11', 7, 'CrisBarco@gmail.com'),
('Casco', 'odontogeriatria', 8, '2015-03-06', 6, 'MiltonCasco@gmail.com'),
('Suarez',  'Radio Fisica', 2, '2014-08-01', 2, 'MatiasSuarez@gmail.com'),
('Quintero', 'Medicina interna', 3, '2007-03-01', 2, 'JuanferQuintero@gmail.com'),
('Villalba', 'Farmocologia', 14, '2000-03-02', 8, 'VillalbaJero@gmail.com'),
('Lescano', 'Derecho', 8, '2006-05-16', 4, 'PabloLescano@gmail.com'),
('Granados', 'Bioetica', 12, '2013-03-04', 6, 'PabloGranados@gmail.com'),
('Garabal', 'psicologia infantil', 5, '2005-08-07', 4, 'MarGarabal@gmail.com'),
('Fridman', 'Primeros auxilios', 17, '2006-10-22', 5, 'LFridman@gmail.com'); 

 CREATE TABLE Asignaturas
 (AsignaturasID INT NOT NULL AUTO_INCREMENT,
 Nombre VARCHAR(30) NOT NULL,
 Jornada VARCHAR(30) NOT NULL,
 Costo FLOAT NOT NULL,
 Carrera INT NOT NULL,
 PRIMARY KEY (AsignaturasID),
 FOREIGN KEY (Carrera) REFERENCES Profesiones(ProfesionesID)
 );

INSERT INTO asignaturas (Nombre, Jornada, costo, Carrera)
VALUES
('Anatomia', 'maniana', 12000, 2),
('Fisiologia', 'noche', 12000, 1),
('Clinica', 'maniana', 8000, 2),
('psicoanalisis', 'maniana', 12000, 4),
('nutricion', 'maniana', 12000, 3),
('Protesis fija', 'noche', 20000, 6),
('Bioteca', 'tarde', 8000, 6),
('Farmacia 2', 'maniana', 10000, 8),
('quimica avanzada', 'noche', 12000, 7),
('Histologia y Embriologia', 'tarde', 7000, 1),
('Biologia', 'maniana', 8000, 8),
('Fisica', 'noche', 11000, 7),
('odontogeriatria', 'noche', 12000, 6),
('Radio fisica', 'maniana', 10000, 2),
('Medicina interna', 'maniana', 12000, 2),
('Farmacologia', 'maniana', 15000, 8),
('Derecho', 'noche', 8000, 4),
('Bioetica', 'noche', 8000, 6),
('psicologia infantil', 'maniana', 12000, 4),
('Primeros auxilios', 'tarde', 8000, 5);
 
 CREATE TABLE Alumnos
 (EstudiantesID INT NOT NULL AUTO_INCREMENT,
 Docente INT NOT NULL,
 Apellido VARCHAR(30) NOT NULL,
 Profesion INT NOT NULL, 
 mail VARCHAR(50) NOT NULL,
 FechaDeIngreso DATE,
 FechaDeNacimiento DATE,
 PRIMARY KEY (EstudiantesID),
 FOREIGN KEY (Docente) REFERENCES Staff(DocentesID),
 FOREIGN KEY (Profesion) REFERENCES Profesiones(ProfesionesID)
 );

INSERT INTO alumnos (Docente, Apellido, Profesion, mail, FechaDeIngreso, FechaDeNacimiento)
VALUES
(1, 'Petrignani', 2, 'martinpetri@gmail.com', '2018-03-04', '2000-12-13'),
(4, 'Peloso', 2, 'emilianopeloso@gmail.com', '2020-03-01', '2001-01-15'),
(5, 'Jusco', 4, 'gonjusco@gmail.com', '2018-03-02', '2000-08-18'),
(3, 'Scardaoni', 3, 'ivanscardaoni@gmail.com', '2018-03-04', '2000-07-13'),
(2, 'Magnareli', 1, 'pilimag@gmail.com', '2022-03-02', '2001-04-28'),
(12, 'Paredes', 7, 'leandroParedes@gmail.com', '2015-03-01', '1999-06-06'),
(19, 'Romero', 4, 'CrisRomero@gmail.com', '2017-03-03', '1998-10-06'),
(13, 'Martinez', 6, 'LichaMartinez@gmail.com', '2019-07-14', '2000-12-12'),
(16, 'Tagliafico', 8, 'NicoTagliafico@gmail.com', '2020-03-01', '2000-02-15'),
(18, 'Martinez', 6, 'LautaroMartinez@gmail.com', '2019-08-07', '2001-09-14'),
(7, 'Montiel', 6, 'SantiagoMontiel@gmail.com', '2018-03-02', '1999-11-21'),
(11, 'Barrios', 8, 'GermanBarrios@gmail.com', '2017-03-04', '1998-05-25'),
(8, 'Palomino', 8, 'SolPalo@gmail.com', '2018-03-08', '1999-01-26'),
(9, 'Lund', 7, 'AiluLund@gmail.com', '2017-04-05', '1999-02-21'),
(10, 'Lareo', 1, 'SolLareo@gamil.com', '2018-03-02', '1998-08-01'),
(6, 'Mernes', 6, 'EmiMer@gmail.com', '2019-03-01', '2000-07-13'),
(14, 'Becerra', 2, 'MariaBecerra@gmail.com', '2018-08-08', '1999-04-15'),
(15, 'Dalessandro', 2, 'BarvieDalesandro@gmail.com', '2018-03-03', '2000-11-22'),
(17, 'Cairo', 4, 'LuliCairo@gmail.com', '2018-03-02', '2000-09-14'),
(20, 'euler', 5, 'DaniEuler@gmail.com', '2019-04-05', '2000-10-10'); 
 
CREATE TABLE Facultades (
FacultadID INT NOT NULL AUTO_INCREMENT,
NombreFacultad Varchar(50) NOT NULL,
FechaCreacion DATE NOT NULL,
CantAlumnos int,
PRIMARY KEY (FacultadID)
);

INSERT INTO Facultades (NombreFacultad, FechaCreacion, CantAlumnos)
VALUES
('Ciencias Sociales', '1922-01-02', 2189),
('Ciencias Naturales', '1915-01-04', 4222),
('Derecho', '1928-01-02', 1701),
('Filosofia y letras', '1935-01-01', 1409),
('Ingenieria', '1924-01-04', 3200),
('Economia', '1928-01-02', 1524);

CREATE TABLE Cursos (
CursoID INT NOT NULL AUTO_INCREMENT,
NombreCurso Varchar(40) NOT NULL,
FechaDeCreacion DATE,
CantAlumnos INT,
PRIMARY KEY (CursoID)
);

INSERT INTO Cursos (NombreCurso, FechaDeCreacion, CantAlumnos)
VALUES
('Tecnologia aplicada a medicina', '1990-01-02', 425),
('Implantología Dental', '2001-09-20', 97),
('Cirugía Oral', '1985-02-10', 80),
('Fisioterapia Avanzada', '2004-06-25', 335),
('Terapia Ocupacional', '1995-10-08', 528),
('Masoterapia Especializada', '2010-01-30', 132),
('Farmacología Clínica', '1986-05-22', 210),
('Tecnología Farmacéutica', '2011-11-10', 118),       
('Farmacia Hospitalaria', '2000-03-05', 222),
('Oncología Moderna', '2012-09-05', 240),
('Neurología Avanzada', '2007-02-28', 160),
('Kinesiología Deportiva', '2000-04-18', 730),
('Rehabilitación Neuromuscular', '2005-12-12', 325),
('Bioquímica Aplicada', '2009-09-28', 125),
('Farmacognosia Avanzada', '2010-02-15', 215),
('Odontología Estética', '2007-05-15', 115),
('Endodoncia Avanzada', '2014-11-30', 142),
('Ortodoncia Moderna', '2011-03-15', 128);

CREATE TABLE Instructores (
InstructorID INT NOT NULL AUTO_INCREMENT,
Nombre Varchar(50),
FechaIngreso DATE,
Curso INT,
PRIMARY KEY (InstructorID),
FOREIGN KEY (Curso) REFERENCES Cursos(CursoID)
);

INSERT INTO Instructores (Nombre, FechaIngreso, Curso)
VALUES 
('Juan Pérez', '2002-01-10', 1),
('María Rodríguez', '2001-12-05', 2),
('Pedro Gómez', '1999-02-15', 3),
('Ana Martínez', '2004-06-25', 4),
('Carlos Sánchez', '2015-03-20', 5),
('Luisa García', '2014-10-25', 6),
('Javier López', '2014-04-05', 7),
('Sofía Hernández', '2018-09-30', 8),
('Diego Ramírez', '2014-05-15', 9),
('Laura Torres', '2009-08-10', 10),
('Ricardo Díaz', '2011-06-20', 11),
('Paula Castro', '2016-07-05', 1),
('Daniel Fernández', '2014-07-25', 13),
('Valeria Ruiz', '2015-06-15', 14),
('Miguel González', '2016-08-30', 15),
('Isabel Jiménez', '2012-05-10', 16),
('Gabriel Martín', '2018-09-10', 17),
('Verónica López', '2009-04-01', 18),
('Roberto Pérez', '2023-10-20', 9),
('Elena Soto', '2022-03-15', 12);

CREATE TABLE Aulas (
AulaID INT NOT NULL AUTO_INCREMENT,
NombreAula Varchar(30) NOT NULL,
Capacidad INT,
Ubicacion VARCHAR(30),
PRIMARY KEY (AulaID)
);

INSERT INTO Aulas (NombreAula, Capacidad, Ubicacion)
VALUES
('Aula 101', 50, 'Primer Piso'),
('Aula 102', 60, 'Primer Piso'),
('Aula 103', 40, 'Primer Piso'),
('Aula 104', 55, 'Primer Piso'),
('Aula 105', 45, 'Primer Piso'),
('Aula 201', 30, 'Segundo Piso'),
('Aula 202', 25, 'Segundo Piso'),
('Aula 203', 35, 'Segundo Piso'),
('Aula 204', 40, 'Segundo Piso'),
('Aula 205', 20, 'Segundo Piso'),
('Aula 301', 70, 'Tercer Piso'),
('Aula 302', 65, 'Tercer Piso'),
('Aula 303', 55, 'Tercer Piso'),
('Aula 304', 60, 'Tercer Piso'),
('Aula 305', 50, 'Tercer Piso'),
('Aula 401', 25, 'Cuarto Piso'),
('Aula 402', 20, 'Cuarto Piso'),
('Aula 403', 30, 'Cuarto Piso'),
('Aula 404', 35, 'Cuarto Piso'),
('Aula 405', 15, 'Cuarto Piso');

CREATE TABLE departamentos (
    DepartamentoID INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(50),
    carrera VARCHAR(50),
    cantidad_alumnos INT,
    PRIMARY KEY (DepartamentoID)
);

INSERT INTO departamentos (nombre, carrera, cantidad_alumnos) 
VALUES 
('Investigación', 'Nutrición', 200),
('Clínica', 'Medicina', 500),
('Rehabilitación', 'Kinesiología', 150),
('Laboratorio', 'Bioquímica', 120),
('Farmacología', 'Farmacia', 180),
('Psicoterapia', 'Psicología', 300),
('Cuidados Intensivos', 'Enfermería', 220),
('Ortodoncia', 'Odontología', 100),
('Nutrición Deportiva', 'Nutrición', 80),
('Cirugía', 'Medicina', 450),
('Fisioterapia', 'Kinesiología', 130),
('Bioquímica Clínica', 'Bioquímica', 110),
('Farmacia Hospitalaria', 'Farmacia', 160),
('Psicología Infantil', 'Psicología', 140),
('Enfermería Pediátrica', 'Enfermería', 210),
('Endodoncia', 'Odontología', 90),
('Nutrición Clínica', 'Nutrición', 70),
('Medicina Interna', 'Medicina', 400),
('Kinesiología Deportiva', 'Kinesiología', 140),
('Toxicología', 'Bioquímica', 100);

CREATE TABLE posgrado (
    PosgradoID INT AUTO_INCREMENT,
    nombre VARCHAR(50),
    carrera VARCHAR(50),
    cantidad_alumnos INT,
    PRIMARY KEY (PosgradoID)
);

INSERT INTO posgrado (nombre, carrera, cantidad_alumnos) 
VALUES 
('Nutrición Clínica Avanzada', 'Nutrición', 30),
('Medicina Interna', 'Medicina', 50),
('Kinesiología Deportiva', 'Kinesiología', 20),
('Odontología Estética', 'Odontología', 25),
('Psicología Organizacional', 'Psicología', 35),
('Farmacología Clínica', 'Farmacia', 40),
('Bioquímica de Alimentos', 'Bioquímica', 15),
('Enfermería en Cuidados Críticos', 'Enfermería', 45),
('Nutrición y Dietética', 'Nutrición', 28),
('Cardiología', 'Medicina', 60),
('Fisioterapia en Neurología', 'Kinesiología', 22),
('Odontopediatría', 'Odontología', 18),
('Psicología Clínica', 'Psicología', 32),
('Farmacia Hospitalaria', 'Farmacia', 38),
('Bioquímica Ambiental', 'Bioquímica', 12),
('Enfermería Geriátrica', 'Enfermería', 40),
('Nutrición Comunitaria', 'Nutrición', 25),
('Medicina Familiar', 'Medicina', 55),
('Kinesiología Respiratoria', 'Kinesiología', 19),
('Odontología Forense', 'Odontología', 17);

CREATE TABLE doctorado (
    DoctoradoID INT AUTO_INCREMENT,
    nombre VARCHAR(50),
    carrera VARCHAR(50),
    cantidad_alumnos INT,
    PRIMARY KEY (DoctoradoID)
);

INSERT INTO doctorado (nombre, carrera, cantidad_alumnos) 
VALUES 
('Doctorado en Nutrición', 'Nutrición', 15),
('Doctorado en Medicina', 'Medicina', 20),
('Doctorado en Kinesiología', 'Kinesiología', 10),
('Doctorado en Odontología', 'Odontología', 12),
('Doctorado en Psicología', 'Psicología', 18),
('Doctorado en Farmacia', 'Farmacia', 22),
('Doctorado en Bioquímica', 'Bioquímica', 8),
('Doctorado en Enfermería', 'Enfermería', 25),
('Doctorado en Nutrición Pública', 'Nutrición', 14),
('Doctorado en Medicina Molecular', 'Medicina', 16),
('Doctorado en Kinesiología Clínica', 'Kinesiología', 11),
('Doctorado en Ortodoncia', 'Odontología', 10),
('Doctorado en Psicología Educativa', 'Psicología', 15),
('Doctorado en Farmacia Industrial', 'Farmacia', 20),
('Doctorado en Bioquímica Médica', 'Bioquímica', 9),
('Doctorado en Enfermería Pediátrica', 'Enfermería', 19),
('Doctorado en Nutrición Animal', 'Nutrición', 13),
('Doctorado en Medicina Genética', 'Medicina', 14),
('Doctorado en Kinesiología Deportiva', 'Kinesiología', 12),
('Doctorado en Odontología Preventiva', 'Odontología', 11);

CREATE VIEW ProfesionSegunAlumno as
SELECT a.EstudiantesID, a.Apellido, p.Profesiones
FROM alumnos a
JOIN Profesiones p on a.Profesion = p.ProfesionesID; 

CREATE VIEW EncargadoPorDocente as
SELECT s.DocentesID, s.apellido, s.encargado, e.Apellido as NombreEncargado
FROM staff s
JOIN encargado e on s.Encargado = e.EncargadoID;

CREATE VIEW AsignaturaPorCarrera as
SELECT a.Nombre as asignatura, p.Profesiones as carrera
FROM asignaturas a
JOIN profesiones p on a.carrera = p.ProfesionesID;

CREATE VIEW CostoPorCarrera as
SELECT Profesiones as carrera, Precio as costo
FROM profesiones;

CREATE VIEW DatosPersonalesAlumno as
SELECT Apellido, FechaDeNacimiento, mail
FROM alumnos;

DELIMITER //
CREATE PROCEDURE CantEstudianMedicina (out cant int)
BEGIN
    SELECT COUNT(EstudiantesID) FROM Alumnos
    WHERE Profesion = 2;
END //

DELIMITER //
CREATE PROCEDURE JornadaSegunAsignatura (out Jornada varchar(30), out carrera int)
BEGIN
    SELECT jornada, carrera from Asignaturas 
    order by AsignaturasID;
END //

DELIMITER //
CREATE PROCEDURE CostoPorAsignatura(out Precio float, out nombre varchar(40))
BEGIN
SELECT costo, Nombre from Asignaturas
Order by AsignaturaID;
ENd //

DELIMITER //
CREATE PROCEDURE Docentes(out nombre varchar(40), out mail varchar(50), out carrera varchar(30))
BEGIN
  SELECT Apellido, email, Profesion from Staff
  order by DocentesID;
END //

CREATE TABLE nuevoAlumno (
apellido VARCHAR(30) NOT NULL,
mail VARCHAR(50) NOT NULL,
fechaDeNacimiento date,
Profesion INT NOT NULL);

CREATE TRIGGER ingresoAlumno
AFTER INSERT ON alumnos
FOR EACH ROW
INSERT INTO nuevoAlumno (apellido, mail, fechaDeNacimiento, Profesion)
VALUES (new.apellido, new.mail, new.fechaDeNacimiento, new.Profesion);

CREATE TABLE StaffNuevo (
DocentesID INT Primary key,
Apellido varchar(30) not null,
FechaDeIngreso DATE not null);

CREATE TRIGGER actualizarStaff
AFTER UPDATE ON Staff
FOR EACH ROW
INSERT INTO StaffNuevo (DocentesID, Apellido, FechaDeIngreso)
VALUES (New.docentesID, new.Apellido, new.FechaDeIngreso);

CREATE TABLE HistorialBajas (
EstudiantesID INT Not NUll,
Apellido varchar(30),
mail varchar(40),
Profesion int not null);

CREATE TRIGGER AlumnoFuera
AFTER DELETE ON Alumnos
FOR EACH ROW
INSERT INTO HistorialBajas (EstudiantesID, Apellido, mail, Profesion)
VALUES (old.EstudiantesID, old.Apellido, old.mail, old.Profesion);

CREATE TABLE ActualizacionPrecioCarrera (
ProfesionesID int not null,
Precio decimal not null);

CREATE TRIGGER NuevoPrecio
AFTER UPDATE ON profesiones
FOR EACH ROW 
INSERT INTO ActualizacionPrecioCarrera (ProfesionesID, Precio)
VALUES (New.ProfesionesID, new.Precio);

CREATE DEFINER=`root`@`localhost` FUNCTION `Edad_alumno_ingreso`(EstudiantesID INT, FechaDeNacimiento date, FechaDeIngreso date) RETURNS int
    READS SQL DATA
BEGIN
  DECLARE edad_ingreso INT;
  SET edad_ingreso = (FechaDeIngreso - FechaDeNacimiento)/ 365;
  RETURN edad_ingreso;
END;

CREATE FUNCTION AntiguedadDocente(FechaDeIngreso date) RETURNS decimal
READS SQL DATA
BEGIN
    RETURN DATEDIFF(CURDATE(), FechaDeIngreso) DIV 365;
END;
