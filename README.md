# SQL-Challenge

## Data Modeling, Data Engineering and Data Analaysis of Pewlett Hackard(a fictional company) Employees using SQL(PostgreSQL)

![sql_logo](https://user-images.githubusercontent.com/120361200/222599633-a6d8ff37-754f-4881-a7b4-d96c3dcc0a31.png)


This is a research project about people whom the Pewlett Hackard(a fictional company
employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.

For this project, I’ll be designing the tables to hold the data from the CSV files, import the CSV files into a SQL database, and then answer questions about the data. 

### Data Modeling

For Data Modeling, first step was to inspect the CSV files provided by the company and create an Entity Relationship Diagram (ERD). Using QuickDBD, I've created an ERD showing the relationships between the variables provided in the data. Results have been saved as SQL, Image and text file. 

![Employees_ERD](https://user-images.githubusercontent.com/120361200/222593969-c70d431b-5096-4c28-be40-a1d3ba1098f2.png)


The ERD shows that the Employees data provided have both many-one and one-many relationships with the other data sets.



### Data Engineering

For Data Engineering, I've created a schema SQL file for each of the six CSV files. Here, I've specified the data types, primary keys and foreign keys for each table which are : Titles, Departments, Employees, Dept_Emp, Dept_manager and Salaries. Data from the CSV files have been imported in the same order.

Also, the Date style for the database has been changed to MM-DD-YYYY to reflect the Employees CSV file, as PostgreSQL defaults Date to YYYY-MM-DD.



### Data Analysis

For Data Analysis, I've analyzed the imported files to answers eight questions by
creating queries for the database. Screenshots of the analysis have been included below with the questions in concern. 

#### 1. List the employee number, last name, first name, sex, and salary of each employee.

<img width="676" alt="Q1" src="https://user-images.githubusercontent.com/120361200/222593996-dfa46844-85a8-4ffe-8b85-ba7139afe1ef.png">



#### 2.List the first name, last name, and hire date for the employees who were hired in 1986.

<img width="449" alt="Q2" src="https://user-images.githubusercontent.com/120361200/222594013-e59aa22b-9d1f-4776-b86a-4f2ed0579d6f.png">



#### 3.List the manager of each department along with their department number, department name, employee number, last name, and first name.

<img width="749" alt="Q3" src="https://user-images.githubusercontent.com/120361200/222594037-3d85cc97-70ef-4f43-b2f6-8ef4f51e7d34.png">



#### 4.List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

<img width="754" alt="Q4" src="https://user-images.githubusercontent.com/120361200/222594067-05dee719-7d9c-487c-a3c3-8a13d4ab38d5.png">



#### 5.List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

<img width="521" alt="Q5" src="https://user-images.githubusercontent.com/120361200/222598713-48e35248-36e1-4d59-ba9d-bdb884c9d544.png">



#### 6. List each employee in the Sales department, including their employee number, last name, and first name.

<img width="459" alt="Q6" src="https://user-images.githubusercontent.com/120361200/222598837-8d6ed55b-06d2-4963-920e-ecbca8de38c0.png">



#### 7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

<img width="596" alt="Q7" src="https://user-images.githubusercontent.com/120361200/222598872-633fc85c-32f9-4b7c-8767-c96b77ab0891.png">



#### 8.List the frequency counts as "Last Name Count", in descending order, of all the employee last names (that is, how many employees share each last name).

<img width="394" alt="Q8" src="https://user-images.githubusercontent.com/120361200/222598907-20c5d3dc-7e17-4187-abad-fbf2c58bd20f.png">





