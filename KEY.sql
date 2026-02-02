-- Primary key - A primary key uniquely identifies each record in a table. it is must be ub=nique for each row,Cannot be NULL,Only one primary key per table.
-- Foreign key - A column in one table that refers to the Primary key of another table to link them together.
create table employees(
emp_id INT primary key auto_increment,
emp_name varchar(50),
salary INT ,
dept_id INT,
foreign key (dept_id) references department(dept_id)
);
INSERT INTO employees (emp_name, salary, dept_id) VALUES
('Rahul Kumar', 35000, 1),
('Neha Sharma', 42000, 2),
('Amit Verma', 30000, 1),
('Priya Singh', 50000, 3),
('Ankit Yadav', 28000, 4),
('Pooja Gupta', 46000, 2),
('Rohit Mishra', 39000, 5),
('Sneha Patel', 52000, 3);
