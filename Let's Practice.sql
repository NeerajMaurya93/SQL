1.Create Database
	Create a database named Schooldb
    Switch to that database
2.Create Table
	Create a table named Students with the following columns.
    student_id INT,Primary key,Auto Increment
    name VARCHAR(50),NOT NULL
    email VARCHAR(100),Unique
    age INT must be greater then or equal to 18
    course VARCHAR(50),Default='BCA'
3.Insert Records
	Insert a single record of student with your own details.
    Insert multiple records of 3 students in a single query.
4.Update Record
	Update the course of one student to 'MCA'.
    Change the age of a student with student_id=2 to 25
5.Delete Record
	Delete the student whose student_id=3.
    
USE company_db;    
6.Display departments whose name start with 'N' hint %n%.
7.Departments in Bhopal and budget >20000
8.Department located in noida ,new delhi or Bhopal using in.
9.Display top 3 highest budget departments.
10.Display the first 4 letters of each department name along with the full name.
-- AGGREGATE FUNCTION
1.Find the remainder when each department's budget is divided by 100000 using a numaric function.
2.Find the highest budget department in each location.
3.Find the lowest budget department in each location.
4.Display location where the maximum department budget is less than 500000

-- JOINS
1.Find employees who do not belong to any department .
2.How each department with total number of employees.
3.Find the total salary paid i  each department.
4.List departments having more than 3 employees.

-- SUBQUERY
1.Get the second highest salary from the employees table using a subquery.
2.Find employees working in the "Sales" department.

-- procedure
1.Create a sql stored procedure named increaseSalary that updates employee salary in a specific department