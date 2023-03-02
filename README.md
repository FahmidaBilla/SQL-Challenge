# SQL-Challenge

## Data Modeling, Data Engineering and Data Analaysis of Pewlett Hackard(a fictional company) Employees using SQL(PostgreSQL)

This is a research project about people whom the Pewlett Hackard(a fictional company
employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.

For this project, I’ll be designing the tables to hold the data from the CSV files, import the CSV files into a SQL database, and then answer questions about the data. 

### Data Modeling

For Data Modeling, first step was to inspect the CSV files provided by the company and create an Entity Relationship Diagram (ERD). Using QuickDBD, I've created an ERD showing the relationships between the variables provided in the data. Results have been saved as SQL, Image and text file. 



The ERD shows that the Employees data provided have both many-one and one-many relationships with the other data sets.



### Data Engineering

For Data Engineering, I've created a schema SQL file for each of the six CSV files. Here, I've specified the data types, primary keys and foreign keys for each table which are : Titles, Departments, Employees, Dept_Emp, Dept_manager and Salaries. Data from the CSV files have been imported in the same order.

Also, the Date style for the database has been changed to MM-DD-YYYY to reflect the Employees CSV file, as PostgreSQL defaults Date to YYYY-MM-DD.



### Data Analysis

For Data Analysis, I've analyzed the imported files to answers eight questions by
creating queries for the database. Screenshots of the analysis have been included below with the questions in concern. 

#### 1. List the employee number, last name, first name, sex, and salary of each employee.



#### 2.List the first name, last name, and hire date for the employees who were hired in 1986.



#### 3.List the manager of each department along with their department number, department name, employee number, last name, and first name.



#### 4.List the department number for each employee along with that employee’s employee number, last name, first name, and department name.



#### 5.List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.


#### 6. List each employee in the Sales department, including their employee number, last name, and first name.



#### 7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.


#### 8.List the frequency counts as "Last Name Count", in descending order, of all the employee last names (that is, how many employees share each last name).






