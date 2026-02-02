USE company_db;
select count(*) as count from department;
SELECT SUM(budget) as Total FROM department;
SELECT AVG(budget) as Avrage FROM department;
SELECT min(budget) as Min_Value FROM department;
SELECT max(budget) as Max_Value FROM department;
-- Or
SELECT count(*) as count,
SUM(budget) as Total, 
AVG(budget) as Avrage ,
min(budget) as Min_Value ,
max(budget) as Max_Value FROM department;

-- GROUP BY
SELECT location , sum(budget) as Total from department group by location;
SELECT location , count(*) as Count from department group by location;
SELECT location , max(budget) as Min_Data from department group by location;

-- HAVING-filters grouped records created by group by based on the condition
SELECT location , count(*) as Count from department group by location having count>=2;
SELECT location , min(budget) as Min_Data from department group by location having Min_Data>2700000;