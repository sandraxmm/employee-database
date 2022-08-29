USE employee_db;

INSERT INTO department
	(department_name)
VALUES
	("Operations"),
	("Information Technology"),
	("Finance"),
	("Clincal"),
	("HR"),
	("Legal");

INSERT INTO role
	(title, salary, department_id)
VALUES
	("CFO", 225000, 3),
	("CMO", 200000, 4),
	("CTO", 250000, 2),
	("COO", 275000, 1),
	("Legal Council", 180000, 6),
	("Database Administrator", 80000, 2),
	("HR Manager", 90000, 5),
	("Accountant", 80000, 3),
	("Doctor", 300000, 4),
	("Nurse", 150000, 4);

INSERT INTO employee
	(first_name, last_name, role_id, manager_id)
VALUES
	("Jennifer", "Lopez", 1 , null),
	("Ben", "Affleck", 2, null),
	("Will", "Smith", 3, null),
	("Angelina", "Jolie", 4, null),
	("Brad", "Pitt", 5, null),
	("Jason", "Mamoa", 6, 3),
	("Emilia", "Clarke", 7, 4),
	("Leonardo", "DiCaprio", 8, 1),
	("Jennifer", "Aniston", 9, 2),
	("Zac", "Efron", 10, 2);

