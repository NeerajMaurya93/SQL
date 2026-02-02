-- VIEWS - A VIEWS IS AVIRTUAL TABLE CREATED FROM THE RESULT OF A QUERY,IT DOES NOT STORE DATA PHYSICALLY, ONLY THE QUERY DEFINITION.
create view employees_salary_view as
select emp_name, salary from employees
where salary<50000;
select * from employees_salary_view ;

create view employees_list as 
select emp_name from employees
where dept_id is not null;
select * from employees_list;