CREATE DATABASE IF NOT EXISTS sql_practice ;
CREATE TABLE IF NOT EXISTS employees
(emp_id INT ,
name VARCHAR(30),
department CHAR(20),
salary INT ,
hire_date DATE,
PRIMARY KEY(emp_id));
INSERT INTO employees VALUES
(1, 'Amit', 'HR', 40000, '2022-01-10'),
(2, 'Neha', 'IT', 60000, '2021-03-15'),
(3, 'Raj', 'IT', 70000, '2020-07-20'),
(4, 'Simran', 'Finance', 50000, '2023-02-25'),
(5, 'Karan', 'HR', 45000, '2030-06-30');
CREATE TABLE departments 
(dept_id INT PRIMARY KEY,
dept_name VARCHAR(50));
CREATE TABLE orders 
(order_id INT PRIMARY KEY,
emp_id INT,
amount INT,
order_date DATE);
INSERT INTO departments VALUES
(1, 'HR'),
(2, 'IT'),
(3, 'Finance');
INSERT INTO orders VALUES
(101, 2, 5000, '2024-01-10'),
(102, 3, 7000, '2024-01-12'),
(103, 2, 3000, '2024-02-01'),
(104, 4, 4000, '2024-02-05'),
(105, 1, 2000, '2024-03-01');