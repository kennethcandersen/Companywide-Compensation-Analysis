﻿--DROP IF THEY EXIST
DROP TABLE IF EXISTS dept_manager; 
DROP TABLE IF EXISTS dept_employee;
DROP TABLE IF EXISTS departments; 
DROP TABLE IF EXISTS salaries; 
DROP TABLE IF EXISTS titles; 
DROP TABLE IF EXISTS employees;

--CREATE TABLES FROM SCRATCH

CREATE TABLE employees (
    emp_no INT   NOT NULL,
    emp_title_id INT   NOT NULL,
    birth_date Date   NOT NULL,
    first_name VARCHAR(30)   NOT NULL,
    last_name VARCHAR(30)   NOT NULL,
    sex VARCHAR(1)   NOT NULL,
    hire_date Date   NOT NULL,
    PRIMARY KEY (emp_no)
	);

CREATE TABLE departments (
    dept_no INT NOT NULL,
    dept_name VARCHAR(30)   NOT NULL,
    PRIMARY KEY (dept_no)
	);

CREATE TABLE titles (
    title_id INT   NOT NULL,
    title VARCHAR(30)   NOT NULL,
    PRIMARY KEY (title_id)
	);

CREATE TABLE salaries (
    emp_no INT   NOT NULL,
    salary INT   NOT NULL,
	PRIMARY KEY (emp_no, salary),
  	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
	);

CREATE TABLE dept_manager (
    dept_no INT   NOT NULL,
    emp_no INT   NOT NULL,
	PRIMARY KEY (dept_no, emp_no),
	FOREIGN KEY (dept_no) REFERENCES department(dept_no),
  	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
	);

CREATE TABLE dept_employee (
    emp_no INT   NOT NULL,
    dept_no INT   NOT NULL,
	PRIMARY KEY (emp_no, dept_no),
  	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES department(dept_no)
	);

SELECT * FROM employees
SELECT * FROM titles
SELECT * FROM salaries
SELECT * FROM department
SELECT * FROM dept_employee
SELECT * FROM dept_manager


