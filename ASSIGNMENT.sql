--SQL ASSIGNMENT: COMPREHENSIVE PRACTICE
	DROP TABLE IF EXISTS employees
	--Q.1.CREATE THE EMPLOYEE TABLE
	CREATE TABLE employees(
	employee_id SERIAL PRIMARY KEY,
	FIRST_NAME VARCHAR(50) NOT NULL,
	LAST_NAME VARCHAR(50) NOT NULL,
	DEPARTMENT VARCHAR(50),
	SALARY DECIMAL(10,2)CHECK(SALARY>0),
	JOINING_DATE DATE NOT NULL,
	AGE INT CHECK (AGE>=18)
	);
	SELECT *FROM employees
	--insert the data in employees table
	INSERT INTO employees(FIRST_NAME,LAST_NAME,DEPARTMENT,SALARY,JOINING_DATE,AGE)
	VALUES
	('Neeraj', 'Maurya', 'Data Analytics', 55000.00, '2023-06-15', 23),
	('Amit', 'Sharma', 'Human Resources', 42000.00, '2022-09-01', 28),
	('Priya', 'Singh', 'Finance', 60000.00, '2021-11-20', 30),
	('Rohit', 'Verma', 'Software Development', 75000.00, '2020-01-10', 26),
	('Sneha', 'Gupta', 'Marketing', 48000.00, '2023-03-05', 25),
	('Karan', 'Yadav', 'Operations', 53000.00, '2019-08-12', 32),
	('Anjali', 'Mehta', 'Finance', 67000.00, '2021-07-01', 29),
	('Vikas', 'Rai', 'IT Support', 40000.00, '2022-10-17', 27),
	('Ritu', 'Chauhan', 'Human Resources', 45000.00, '2020-02-22', 31),
	('Arjun', 'Patel', 'Software Development', 72000.00, '2021-04-05', 24),
	('Pooja', 'Kumari', 'Data Analytics', 58000.00, '2022-12-11', 26),
	('Sahil', 'Khan', 'Marketing', 50000.00, '2023-01-19', 25),
	('Divya', 'Nair', 'Finance', 64000.00, '2020-09-30', 33),
	('Manish', 'Dubey', 'Software Development', 80000.00, '2019-05-15', 29),
	('Komal', 'Mishra', 'Operations', 52000.00, '2021-08-21', 28);

		SELECT *FROM employees
	--Q.2.RETRIEVE ALL EMPLOYEES FIRST_NAME AND THEIR DEPARTMENTS.
		SELECT FIRST_NAME,DEPARTMENT FROM employees;
	--Q.3.UPDATE THE SALARY OF ALL EMPLOYEES IN THE 'IT'DEPARTMENT BY INCREASING IT BY 10%
		UPDATE EMPLOYEES
		SET SALARY =SALARY+( SALARY * 0.1)
		WHERE DEPARTMENT = 'Finance';

		SELECT *FROM employees
	--Q.4.DELET ALL EMPLOYEES WHO ARE OLDER THAN 34 YEARS.
		DELETE  FROM employees 
		WHERE age >=35;
	--Q.5.ADD A NEW COLUMN 'EMAIL'TO THE EMPLOYEES TABLE.
		ALTER TABLE employees
		ADD COLUMN EMAIL VARCHAR(100);

		SELECT *FROM employees
	--Q.6.RENAME THE DEPARTMENT COLUMN  TO 'DEPT_NAME'.
		ALTER TABLE employees
		RENAME COLUMN DEPARTMENT TO DEPT_NAME;

		SELECT *FROM employees
	--Q.7.RETRIEVE THE NAME OF EMPLOYEES WHO JOINED AFTER JANUARY1,2021.
		SELECT FIRST_NAME,LAST_NAME,JOINING_DATE FROM employees
		WHERE JOINING_DATE>'2021-01-01';

		SELECT *FROM employees
	--Q.8.CHANGE THE DATA TYPE OF THE SALARY COLUMN INTO INTGER.
		ALTER TABLE employees
		ALTER COLUMN SALARY TYPE INTEGER USING SALARY::INTEGER;

		SELECT *FROM employees
	--Q.9.LAST ALL EMPLOYEES WITH THEIR AGE AND SALARY IN DESENDING ORDER OF SALARY.
		SELECT FIRST_NAME,AGE, SALARY FROM employees ORDER BY salary DESC;
	--Q.10.INSERT A NEW EMPLOYEES WITH THE FOLLOWING DETAILS:'Raj','singh','Marketing',60000,'2023-09-15',30.
		INSERT INTO employees(first_name,last_name,dept_name,salary,joining_date,age)
		VALUES('Raj','singh','Marketing',60000,'2023-09-15',30.)

		SELECT *FROM employees
	--q.11.UPDATE AGE  OF EMPOYEES +1 TO EVERY EMPLOYEE.
		UPDATE employees
		SET age=age+1;

		SELECT *FROM employees
