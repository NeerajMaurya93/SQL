use company_db;
-- SQL STRING FUNCTIONS
select upper(location) as locationUPPER from department;
select * ,upper(location) as locationUPPER from department;
select concat(dept_name,' - > ',location) as name_location from department;
select *, concat(dept_name,' - > ',location) as name_location from department;
select substring( upper(location),1,4) as substring_loc from department;
select *, substring( upper(location),1,4) as substring_loc from department;
select dept_name,length(dept_name) as dept_len from department;

-- SQL NUMERIC FUNCTIONS
SELECT abs(budget) as budget from department;
select round(budget,2) as budget from department;
