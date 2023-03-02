-- Data Analysis

-- 1.List the employee number, last name, first name, sex, and salary of each employee.
SELECT e.emp_no, 
	   e.last_name, 
	   e.first_name, 
	   e.sex, 
	   s.salary
FROM Employees as e
INNER JOIN Salaries as s on
	(e.emp_no = s.emp_no)
ORDER BY e.emp_no;

-- 2.List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT e.first_name, 
	   e.last_name, 
	   e.hire_date
FROM Employees as e
	WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31'
ORDER BY hire_date;

-- 3.List the manager of each department along with their department number, 
--   department name, employee number, last name, and first name.
SELECT dm.dept_no, 
	   d.dept_name, 
	   dm.emp_no, 
	   e.last_name, 
	   e.first_name
FROM Dept_Manager as dm
INNER JOIN Departments as d on
	(dm.dept_no = d.dept_no)
INNER JOIN Employees as e on
	(dm.emp_no = e.emp_no)
ORDER BY dm.dept_no;

-- 4.List the department number for each employee along with that employee’s 
--   employee number, last name, first name, and department name.
SELECT em.dept_no, 
	   em.emp_no, 
	   e.last_name, 
	   e.first_name, 
	   d.dept_name
FROM Dept_Emp as em
INNER JOIN Employees as e on
	(em.emp_no = e.emp_no)
INNER JOIN Departments as d on
	(em.dept_no = em.dept_no)
ORDER BY em.dept_no;

-- 5.List first name, last name, and sex of each employee whose first name is Hercules
--   and whose last name begins with the letter B.
SELECT first_name, 
	   last_name, 
	   sex
FROM Employees
WHERE 
	first_name = 'Hercules'
AND
	last_name like 'B%';
	
-- 6.List each employee in the Sales department, including their employee number, 
--   last name, and first name.
SELECT e.emp_no, 
	   e.last_name, 
	   e.first_name
FROM Employees as e
INNER JOIN Dept_Emp as em 
	ON (e.emp_no = em.emp_no)
INNER JOIN Departments as d
	ON (d.dept_no = em.dept_no)
	WHERE d.dept_name = 'Sales';

-- 7.List each employee in the Sales and Development departments, including their 
--   employee number, last name, first name, and department name.
SELECT e.emp_no, 
	   e.last_name, 
	   e.first_name,
	   d.dept_name
FROM Employees as e
INNER JOIN Dept_Emp as em 
	ON (e.emp_no = em.emp_no)
INNER JOIN Departments as d
	ON (d.dept_no = em.dept_no)
	WHERE 
		d.dept_name = 'Sales'
	OR	d.dept_name = 'Development';
	
-- 8.List the frequency counts, in descending order, of all the employee last names 
--  (that is, how many employees share each last name).
SELECT e.last_name, COUNT(e.last_name) AS "Last Name Count"
FROM Employees as e
GROUP BY e.last_name
ORDER BY "Last Name Count" DESC;
