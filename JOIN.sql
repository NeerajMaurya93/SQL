-- Join in sql is used to combine data from two table or more table using a common column.
-- INNER JOIN - RETURNS ONLY RECORDS WITH MATCHING KEYS IN BOTH TABLES.alter.
-- 1.INNER JOIN
USE company_db;
select e.emp_id,e.emp_name,e.salary,d.dept_id,d.dept_name,d.location
from employees as e 
inner join department as d on e.dept_id=d.dept_id order by emp_id;
-- LEFT JOIN - RETURNS ALL EMPLOYEES, INCLUDING THOSE WITHOUT A DEPARTMENT.NON MATCHING DEPARTMENT = NULL
-- 2.LEFT JOIN
select e.emp_id,e.emp_name,e.salary,d.dept_id,d.dept_name,d.location
from employees as e 
left join department as d on e.dept_id=d.dept_id order by emp_id;
-- RIGHT JOIN - RETURNS ALL DEPARTMENTS, INCLUDING THOSE WITHOUT EMPLOYEES.NON MATCHING EMPLOYEES = NULL
-- 3.RIGHT JOIN
select e.emp_id,e.emp_name,e.salary,d.dept_id,d.dept_name,d.location
from employees as e 
right join department as d on e.dept_id=d.dept_id order by emp_id;
-- SELF JOIN - A TABLE JOIN WITH ITSELF .USEFUL FOR HIEARCHY OR COMPARING ROWS.
-- 4.SELF JOIN
 -- add a new cloumn for self join explanation 
alter table employees
add manager_id INT,
add constraint foreign key(manager_id) 
references employees(emp_id);
-- insert value in manager id 
update
employees set manager_id =3
where emp_id in(6,7);

select e1.emp_name from employees e1;
select e1.emp_name,e2.emp_name as manager
 from employees e1
 left join employees e2
 on e1.manager_id=e2.emp_id
 ;
 -- CROSS JOIN - A SQL JOIN THAT COBINES EVERY ROW FROM THE FIRST TABLE WITH EVERY ROW FROM THE SECOND TABLE(Cartesian product).
 -- 5.CROSS JOIN
 select e.emp_name,d.dept_name from employees e cross join department d ;
 
-- UNION - COMBINES RESULTS OF TWO OR MORE QUERIES. REMOVES DUPLICATES BY DEFAULT
select emp_name,dept_id from employees where dept_id =1
union
select emp_name,dept_id from employees where dept_id = 2
