SELECT employee.emp_no, employee.last_name, employee.first_name, employee.sex, salaries.salary
FROM employee
JOIN salaries
ON employee.emp_no = salaries.emp_no;

SELECT first_name, last_name, hire_date 
FROM employee
WHERE hire_date >= '1986-01-01'
AND hire_date <= '1986-12-31';

SELECT departments.dept_no, departments.dept_name, dept_man.emp_no, employee.last_name, employee.first_name
FROM departments
JOIN dept_man
ON departments.dept_no = dept_man.dept_no
JOIN employee
ON dept_man.emp_no = employee.emp_no;

SELECT dept_emp.emp_no, employee.last_name, employee.first_name, departments.dept_name
FROM dept_emp
JOIN employee
ON dept_emp.emp_no = employee.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no;

SELECT first_name, last_name
FROM employee
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

SELECT dept_emp.emp_no, employee.last_name, employee.first_name, departments.dept_name
FROM dept_emp
JOIN employee
ON dept_emp.emp_no = employee.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales';

SELECT dept_emp.emp_no, employee.last_name, employee.first_name, departments.dept_name
FROM dept_emp
JOIN employee
ON dept_emp.emp_no = employee.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales' 
OR departments.dept_name = 'Development';

SELECT last_name,
COUNT(last_name) AS "frequency"
FROM employee
GROUP BY last_name
ORDER BY
COUNT(last_name) DESC;