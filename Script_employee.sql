CREATE TABLE if not exists employees (
    employee_id SERIAL PRIMARY KEY, 
    full_name VARCHAR(250) NOT null
);

CREATE TABLE if not exists departments (
    department_id SERIAL PRIMARY KEY, 
    name VARCHAR(250) NOT NULL 
);

CREATE TABLE if not exists chiefs (
    chief_id SERIAL PRIMARY KEY, 
    employee_id INT NOT NULL,
    CONSTRAINT fk_employee FOREIGN KEY(employee_id) REFERENCES employees(employee_id) ON DELETE cascade
);

ALTER TABLE 
    employees
ADD 
    chief_id INT NOT NULL, 
ADD 
    FOREIGN KEY(chief_id) REFERENCES chiefs(chief_id);
    
ALTER TABLE 
    employees
ADD 
    department_id INT NOT NULL, 
ADD 
    FOREIGN KEY(department_id) REFERENCES departments(department_id);