-- Create departments table
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50),
    location VARCHAR(50)
);

-- Insert sample departments
INSERT INTO departments VALUES
(1, 'HR', 'Mumbai'),
(2, 'IT', 'Delhi'),
(3, 'Finance', 'Mumbai'),
(4, 'Marketing', 'Bangalore');

-- Create employees table
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50),
    department_id INT,
    salary INT,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

-- Insert sample employees
INSERT INTO employees VALUES
(101, 'Amit', 1, 50000),
(102, 'Riya', 2, 70000),
(103, 'Kabir', 2, 60000),
(104, 'Sana', 3, 65000),
(105, 'Neha', 4, 48000),
(106, 'Raj', 1, 52000);


-- View 1: View of high earning employees
CREATE VIEW high_earners AS
SELECT employee_id, name, salary
FROM employees
WHERE salary > 60000;

-- View 2: Department-wise average salary
CREATE VIEW department_avg_salary AS
SELECT d.department_name, AVG(e.salary) AS avg_salary
FROM employees e
JOIN departments d ON e.department_id = d.department_id
GROUP BY d.department_name;

-- View 3: Employees with department name (abstraction)
CREATE VIEW employee_details AS
SELECT e.employee_id, e.name, d.department_name, e.salary
FROM employees e
JOIN departments d ON e.department_id = d.department_id;

-- Using a view
SELECT * FROM high_earners;
SELECT * FROM department_avg_salary;
SELECT * FROM employee_details;

-- Dropping a view example
-- DROP VIEW high_earners;

-- View with CHECK OPTION
CREATE VIEW mumbai_employees AS
SELECT * FROM employees e
JOIN departments d ON e.department_id = d.department_id
WHERE d.location = 'Mumbai'
WITH CHECK OPTION;