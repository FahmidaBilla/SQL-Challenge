-- Create Tables

-- DROP TABLE IF EXISTS if exists
DROP TABLE IF EXISTS Titles;
DROP TABLE IF EXISTS Employees;
DROP TABLE IF EXISTS Departments;
DROP TABLE IF EXISTS Dept_Emp;
DROP TABLE IF EXISTS Dept_Manager;
DROP TABLE IF EXISTS Salaries;


-- Change date format to MDY to match raw CSV Employees date style
ALTER DATABASE employees_db SET datestyle TO "ISO, MDY";

-- Create Titles table:
CREATE TABLE Titles(
    title_id VARCHAR(20)   NOT NULL,
    title VARCHAR(50)   NOT NULL,
    PRIMARY KEY (title_id)
);

-- Create Departments table:
CREATE TABLE Departments(
    dept_no VARCHAR(15)   NOT NULL,
    dept_name VARCHAR(50)  NOT NULL,
    PRIMARY KEY (dept_no)
);

-- Create Employees table:
CREATE TABLE Employees(
    emp_no INTEGER   NOT NULL,
    emp_title_id VARCHAR(20)   NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES Titles(title_id),
    birth_date DATE   NOT NULL,
    first_name VARCHAR(50)   NOT NULL,
    last_name VARCHAR(50)   NOT NULL,
    sex VARCHAR(10)   NOT NULL,
    hire_date DATE   NOT NULL,
    PRIMARY KEY (emp_no)
);

-- Create Dept_Emp table:
CREATE TABLE Dept_Emp(
    emp_no INTEGER   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
	dept_no VARCHAR(15)   NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
    PRIMARY KEY (emp_no,dept_no)
);

-- Create Dept_Manager table:
CREATE TABLE Dept_Manager(
    dept_no VARCHAR(15)   NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
    emp_no INTEGER   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
    PRIMARY KEY (dept_no,emp_no)
);

-- Create Salaries table:
CREATE TABLE Salaries(
    emp_no INTEGER   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
    salary INTEGER   NOT NULL,
    PRIMARY KEY (emp_no)
);

-- Display each table to confirm data is imported properly

SELECT * FROM Titles;
SELECT * FROM Departments;
SELECT * FROM Employees;
SELECT * FROM Dept_Emp;
SELECT * FROM Dept_Manager;
SELECT * FROM Salaries;

