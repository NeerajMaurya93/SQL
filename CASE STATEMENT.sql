USE company_db;
select emp_name,salary,(
case
	when salary>50000 then "High"
	when salary between 20000 and 50000 then "Medium"
	else "Low"
end
) as SalaryCategory from employees ;

create view empCountByDepartment as 
select d.dept_id ,d.dept_name,count(e.emp_id)
from department as d left join employees as e
on e.dept_id =d.dept_id group by d.dept_id;
select * from empCountByDepartment;