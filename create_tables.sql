CREATE DATABASE Company;

USE Company;

CREATE TABLE Departments (
    dept_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100),
    salary DECIMAL(10, 2),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES Departments(dept_id)
);
