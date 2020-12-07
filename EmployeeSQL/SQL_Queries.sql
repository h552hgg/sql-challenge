SELECT *
FROM employees LIMIT 15;

--Problem 1						
SELECT e.emp_no,e.last_name,e.first_name,e.sex,s.salary
FROM employees AS e
	LEFT JOIN salaries AS s
	ON(e.emp_no = s.emp_no)
ORDER BY emp_no

--Problem 2
SELECT first_name,last_name,hire_date
FROM employees 
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

SELECT *
FROM departments LIMIT 10;

--Problem 3
SELECT man.dept_no,dep.dept_name,
employees.emp_no, employees.last_name,employees.first_name
FROM dept_manager AS man
INNER JOIN departments AS dep
	ON(man.dept_no=dep.dept_no)
INNER JOIN employees 
	ON(man.emp_no = employees.emp_no);

--Problem 4
SELECT e.emp_no,e.last_name,
e.first_name, depname.dept_name
FROM dept_emp AS dept
INNER JOIN departments AS depname
	ON(dept.dept_no = depname.dept_no)
INNER JOIN employees AS e
	ON(dept.emp_no = e.emp_no);

--Problem 5
SELECT first_name, last_name,sex
FROM employees
WHERE first_name ='Hercules' AND last_name LIKE 'B%';

SELECT *
FROM employees LIMIT 10;

--Problem 6
SELECT e.emp_no,e.last_name, e.first_name,dept.dept_name
FROM employees AS e
RIGHT JOIN dept_emp AS dep
	ON(e.emp_no=dep.emp_no)
RIGHT JOIN departments AS dept
	ON(dep.dept_no=dept.dept_no)
WHERE dept.dept_no ='d007';

SELECT *
FROM Departments LIMIT 10;

--Problem 7
SELECT e.emp_no,e.last_name, e.first_name,dept.dept_name
FROM employees AS e
RIGHT JOIN dept_emp AS dep
	ON(e.emp_no=dep.emp_no)
RIGHT JOIN departments AS dept
	ON(dep.dept_no=dept.dept_no)
WHERE dept.dept_no ='d007' OR dept.dept_no='d005';

--Problem 8
SELECT last_name,Count(last_name) AS "Frequency"
FROM employees
GROUP BY last_name
ORDER BY "Frequency" DESC;
