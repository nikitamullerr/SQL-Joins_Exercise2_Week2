create database bright_future_company;
use bright_future_company;

-- Task 1
create table employees (
employee_id int primary key auto_increment,
name varchar (50),
department_id int null,
salary decimal(10,2),
email varchar(100),
phone varchar(15)
);

create table departments (
department_id int primary key auto_increment,
department_name varchar(100),
location varchar(50)
);

-- Task 2
insert into employees
values (1 ,"Thandiwe Mkhize", 101, 5000.00, "thandiwe@brightfuture.com", "0834567890"),
	(2, "Sipho Dlamini", 102, 42000.00, "sipho@brightfuture.com", "0732345678"),
	(3, "Nosipho Ngcobo", 103, 39000.00, "nosipho@brightfuture.com", "0613456789" ),
    (4, "Johan van der Merwe", 101, 48000.00, "johan@brightfuture.com", "0824567890"),
    (5, "Zanele Molefe", null, 40000.00, "zanele@brightfuture.com", "0711234567");
    
insert into departments
values (101, "Human Resources","Johannesburg"),
	(102, "IT", "Cape Town"),
    (103, "Marketing", "Durban"),
    (104, "Finance", "Pretoria");
    
-- Task 3
SELECT name , department_name , location
FROM employees as e
INNER JOIN departments as d
ON e.department_id = d.department_id;

SELECT name , department_name , location
FROM employees as e
LEFT JOIN departments as d
ON e.department_id = d.department_id;

SELECT name , department_name , location
FROM employees as e
RIGHT JOIN departments as d
ON e.department_id = d.department_id;

SELECT *
FROM employees
CROSS JOIN departments;

-- TASK 4
UPDATE employees
SET Phone = '0845678901'
WHERE employee_id = 3 ;

DELETE FROM employees
WHERE employee_id = 5 ;

SELECT * FROM employees ;

-- Task 5
SELECT name , department_name , salary
FROM employees as e
INNER JOIN departments as d
ON e.department_id = d.department_id
Where salary > 40000;

SELECT d.department_name, COUNT(e.Employee_id) AS members, SUM(e.Salary) AS Total_payroll
FROM departments as d
JOIN employees as e
ON d.department_id = e.department_id
GROUP BY d.department_name;

-- Task 6
SELECT d.department_id, d.department_name
FROM departments d
LEFT JOIN employees e
ON d.Department_id = e.Department_id
WHERE e.employee_id IS NULL;

SELECT e.employee_id, e.name, e.department_id
FROM employees AS e
LEFT JOIN departments AS d
ON e.department_id = d.department_id
WHERE d.department_id IS NULL;