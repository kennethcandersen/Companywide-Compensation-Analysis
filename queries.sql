--VERIFY HOW THE TABLES LOOK
SELECT * FROM employees
SELECT * FROM titles
SELECT * FROM salaries
SELECT * FROM departments
SELECT * FROM dept_employee
SELECT * FROM dept_manager

--1. List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
LEFT JOIN salaries ON employees.emp_no=salaries.emp_no

--2. List first name, last name, and hire date for employees who were hired in 1986.

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date >= '1986-01-01 00:00:00'::timestamp 
	AND  hire_date <  '1987-01-01 00:00:00'::timestamp

--3. List the manager of each department with the following information: department number, department name, 
--   the manager's employee number, last name, first name.

SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
FROM departments
LEFT JOIN dept_manager ON departments.dept_no=dept_manager.dept_no
LEFT JOIN employees ON dept_manager.emp_no=employees.emp_no

--4. List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
LEFT JOIN dept_employee ON employees.emp_no = dept_employee.emp_no
LEFT JOIN departments ON dept_employee.dept_no = departments.dept_no

--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules'
	AND  last_name LIKE 'B%'

--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
LEFT JOIN dept_employee ON employees.emp_no = dept_employee.emp_no
LEFT JOIN departments ON dept_employee.dept_no = departments.dept_no
WHERE dept_name = 'Sales'

--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
LEFT JOIN dept_employee ON employees.emp_no = dept_employee.emp_no
LEFT JOIN departments ON dept_employee.dept_no = departments.dept_no
WHERE dept_name IN ('Sales', 'Development')

--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT last_name AS "Last Name", COUNT(last_name) AS "Frequency Count"
FROM employees
GROUP BY last_name
ORDER BY "Frequency Count" DESC

--EPILOGUE. HAHAHAHA NICE ONE
SELECT * FROM employees
WHERE emp_no = 499942

--FOR BONUS MATERIAL
SELECT employees.emp_no, salaries.salary, titles.title
FROM employees
LEFT JOIN salaries ON employees.emp_no=salaries.emp_no
