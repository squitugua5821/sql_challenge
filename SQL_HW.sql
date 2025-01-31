SELECT * FROM departments;

SELECT * FROM dept_emp;

SELECT * FROM dept_manager;

SELECT * FROM employees;

SELECT * FROM salaries;

SELECT * FROM titles;

SELECT employees.emp_no, employees.last_name, employees.first_name, employees.gender, salaries.salary

FROM employees

JOIN salaries

ON employees.emp_no = salaries.emp_no;


SELECT first_name, last_name, CONVERT(DATE, hire_date, 101) AS hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1987-01-01';

SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name, dept_manager.from_date, dept_manager.to_date

FROM departments

JOIN dept_manager

ON departments.dept_no = dept_manager.dept_no

JOIN employees

ON dept_manager.emp_no = employees.emp_no;



SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name

FROM dept_emp

JOIN employees

ON dept_emp.emp_no = employees.emp_no

JOIN departments

ON dept_emp.dept_no = departments.dept_no;



SELECT first_name, last_name

FROM employees

WHERE first_name = 'Hercules'

AND last_name LIKE 'B%';



SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name

FROM dept_emp

JOIN employees

ON dept_emp.emp_no = employees.emp_no

JOIN departments

ON dept_emp.dept_no = departments.dept_no

WHERE departments.dept_name = 'Sales';



SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name

FROM dept_emp

JOIN employees

ON dept_emp.emp_no = employees.emp_no

JOIN departments

ON dept_emp.dept_no = departments.dept_no

WHERE departments.dept_name = 'Sales' 

OR departments.dept_name = 'Development';



SELECT last_name,

COUNT(last_name) AS "frequency"

FROM employees

GROUP BY last_name

ORDER BY

COUNT(last_name) DESC;