🎓 Universidad Database Project

📘 Overview
This project models the structure and operations of a university using a relational database built in MySQL. It includes comprehensive entities such as students, staff, courses, faculties, departments, and academic programs (undergraduate, postgraduate, doctoral). The schema is designed to support administrative tasks, academic tracking, and data analysis through views, stored procedures, triggers, and functions.
📚 Core Tables
- Profesiones: Academic careers with duration, cost, and subject count.
- Encargado: Administrative staff responsible for academic areas.
- Staff: Teaching staff linked to careers and administrative supervisors.
- Asignaturas: Subjects offered, with cost and schedule.
- Alumnos: Students with personal and academic details.
- Facultades: Faculties with creation date and student count.
- Cursos: Courses with enrollment and creation metadata.
- Instructores: Course instructors.
- Aulas: Classrooms with capacity and location.
- Departamentos, Posgrado, Doctorado: Academic divisions by level.
🔍 Views
- ProfesionSegunAlumno: Maps students to their careers.
- EncargadoPorDocente: Shows which administrator supervises each teacher.
- AsignaturaPorCarrera: Links subjects to careers.
- CostoPorCarrera: Displays career costs.
- DatosPersonalesAlumno: Extracts student contact and birth data.
⚙️ Stored Procedures
- CantEstudianMedicina: Counts students enrolled in Medicine.
- JornadaSegunAsignatura: Lists subject schedules by career.
- CostoPorAsignatura: Retrieves subject costs.
- Docentes: Lists teachers with contact and career info.
🔁 Triggers
- ingresoAlumno: Logs new student entries into nuevoAlumno.
- actualizarStaff: Tracks updates to staff in StaffNuevo.
- AlumnoFuera: Archives deleted students in HistorialBajas.
- NuevoPrecio: Logs career price updates in ActualizacionPrecioCarrera.
🧮 Functions
- Edad_alumno_ingreso: Calculates student age at enrollment.
- AntiguedadDocente: Computes teacher tenure in years.
🧠 Purpose
This project demonstrates:
- Relational modeling of academic institutions.
- Use of foreign keys for referential integrity.
- Automation via triggers and stored procedures.
- Analytical views for reporting and decision-making.
- Custom functions for derived metrics.
🚀 How to Use
- Run the schema and table creation scripts in a MySQL environment.
- Populate tables with sample data using INSERT statements.
- Explore views and procedures for insights and automation.
- Extend the schema with additional logic or frontend integration.
📂 Suggested Improvements
- Add indexing for performance optimization.
- Normalize repeated fields (e.g., career names).
- Integrate user roles and authentication for multi-user access.
- Connect to a frontend dashboard for visualization.
