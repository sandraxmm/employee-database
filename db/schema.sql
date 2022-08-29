DROP DATABASE IF EXISTS employee_db;
CREATE DATABASE employee_db;
USE employee_db;

-- Department table
CREATE TABLE department(
    id INT NOT NULL AUTO_INCREMENT,
    department_name VARCHAR(30) NOT NULL,
    PRIMARY KEY(id)
);

-- Role table
CREATE TABLE role(
    id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL,
    department_id INT NOT NULL,
    PRIMARY KEY(id),
    INDEX idx_department (department_id),
    CONSTRAINT fk_role_department FOREIGN KEY (department_id)
        REFERENCES department (id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

-- Employee table
CREATE TABLE employee(
    id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT NOT NULL,
    manager_id INT,
    PRIMARY KEY(id),
    CONSTRAINT fk_emplpoyee_role FOREIGN KEY (role_id)
        REFERENCES role (id)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT fk_emplpoyee_manager FOREIGN KEY (manager_id)
        REFERENCES employee (id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);