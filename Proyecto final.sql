
-- CREATE SCHEMA Universidad;


CREATE TABLE Profesiones 
(ProfesionesID INT NOT NULL AUTO_INCREMENT,
Duracion INT NOT NULL,
Precio FLOAT NOT NULL,
CantMaterias INT NOT NULL,
Profesiones VARCHAR(50) NOT NULL,
PRIMARY KEY (ProfesionesID)
);

CREATE TABLE Encargado
(EncargadoID INT NOT NULL auto_increment,
 Apellido VARCHAR(30) NOT NULL,
 Correo VARCHAR(50) NOT NULL,
 PRIMARY KEY (EncargadoID)
 );

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
 
 CREATE TABLE Asignaturas
 (AsignaturasID INT NOT NULL AUTO_INCREMENT,
 Nombre VARCHAR(30) NOT NULL,
 Jornada VARCHAR(30) NOT NULL,
 Costo FLOAT NOT NULL,
 Carrera INT NOT NULL,
 PRIMARY KEY (AsignaturasID),
 FOREIGN KEY (Carrera) REFERENCES Profesiones(ProfesionesID)
 );
 
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
 