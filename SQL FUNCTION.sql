-- FUNCTION - A FUUNCTION IS A STORE PROGRAM THAT RETURNS A SINGLE VALUE AND CAN BE USED INSIDE SQL STATEMENTS.
DELIMITER //
create function AnnualSalary(monthSalary int)
returns int
deterministic
begin
	return monthSalary*12;
end //
DELIMITER ; 
SELECT emp_name,salary,AnnualSalary(salary) as AnnualSalary from employees;

-- STORED PROCEDURE - A STORE PROCEDURE IS A BLOCK OF SQL STATEMENT SAVED IN THE DATABASE THAT CAN BE EXECUTED WITH PARAMETERS.
DELIMITER //
create procedure empByDeptId (deptId int)
begin
	select emp_id,emp_name,salary from employees
    where dept_id=deptId;
end //
DELIMITER ;
call empByDeptId(2);


-- Create a sql stored procedure named increaseSalary that updates employee salary in a specific department
DELIMITER //
create procedure IncreaseSalary (deptId int , amount int)
begin
	update employees set salary=salary+amount
    where dept_id=deptId;
end //
DELIMITER ;
call IncreaseSalary(2,5000);

-- TRIGGER - A TRIGGER IS A DATABSE OBJECT THAT AUTOMATICALLY EXECUTES A SPECIFID ACTION BEFORE OR AFTER AN INSERT,UPDATE,OR DELETE OPRATION ON A TABLE
-- BEFORE TRIGGER - EXECUTES BEFORE THE DATA MODIFICATION OCCURS.
	-- THE TRIGGER RUNS BEFORE EVERY INSERT ON THE EMPLOYEES TABLE.
    -- IF THE INCOMING SALARY IS NEGATIVE OR NULL,IT AUTOMATICALLY SETS SALARY TO 0.
	DELIMITER //
	create trigger employees
    before insert on employees
    for each row
	begin
		if new.salary < 0 or new.salary is null then
        set new.salary = 0;
        end if;
	end //
	DELIMITER ;
    INSERT INTO employees (emp_name, salary, dept_id) VALUES
	('lucky', 60000, 2);
    
    
-- AFTER TRIGGER - EXECUTES AFTER THE DATA MODIFICATION OCCURS.
CREATE TABLE employees_trigger (
    audit_id INT AUTO_INCREMENT PRIMARY KEY,
    emp_id INT NOT NULL,
    action_type ENUM('INSERT',' UPDATE','DELETE') NOT NULL,   -- INSERT / UPDATE / DELETE
    action_time DATETIME DEFAULT CURRENT_TIMESTAMP,
    remarks VARCHAR(255)
);
DELIMITER //
	create trigger emp_logs
    after delete on employees
    for each row
	begin
		INSERT INTO employees_trigger (emp_id, action_type, remarks) VALUES
		(old.emp_id,"DELETE","employee deleted");
    
	end //
	DELIMITER ;
    delete from employees where emp_id = 12;