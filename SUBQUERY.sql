-- SUBQUERY - IT IS A QUERY NESTED INSIDE ANOTHER QUERY.
-- 1.Get the second highest salary from the employees table using a subquery.
select	max(salary) as secondMax from employees where salary<(select	max(salary)from employees);
-- or
 select  salary from employees order by salary desc limit 1,1;
 
 -- SUBQUERY IN SELECT-GOAL- SHOW EACH EMPLOYEE AND HIGHEST SALARY IN THEIR DEPARTMENT.
 select emp_name,salary,dept_id,
 (select max(salary) from employees e2 where e2.dept_id=e1.dept_id)
 as deptMaxSalary
 from employees e1;
 
--  Find employees working in the "Sales" department.
 select emp_name,dept_id from employees
 where dept_id=(select dept_id from department where dept_name="sales")