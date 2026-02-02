USE company_db;
CREATE TABLE department(
dept_id INT primary key,
dept_name varchar(50),
location varchar(50),
budget INT
);
INSERT INTO department (dept_id, dept_name, location, budget) VALUES
(1, 'Human Resources', 'New Delhi', 1500000),
(2, 'Finance', 'Mumbai', 3000000),
(3, 'Information Technology', 'Bengaluru', 5200000),
(4, 'Marketing', 'Pune', 2400000),
(5, 'Sales', 'Chennai', 3600000),
(6, 'Research and Development', 'Hyderabad', 4800000),
(7, 'Operations', 'Kolkata', 2900000),
(8, 'Customer Support', 'Noida', 1900000),
(9, 'Administration', 'Gurgaon', 1700000),
(10, 'Logistics', 'Ahmedabad', 2500000),
(11, 'Quality Assurance', 'Indore', 1600000),
(12, 'Procurement', 'Bhopal', 2100000),
(13, 'Legal', 'Jaipur', 1800000),
(14, 'Public Relations', 'Chandigarh', 2000000),
(15, 'Product Management', 'Bengaluru', 4200000),
(16, 'Business Analytics', 'Hyderabad', 3800000),
(17, 'Training and Development', 'Lucknow', 1400000),
(18, 'Security', 'Faridabad', 1300000),
(19, 'Infrastructure', 'Nagpur', 3300000),
(20, 'Strategy and Planning', 'Delhi', 4100000);

SELECT * FROM department;
SELECT dept_id as ID ,dept_name FROM department; -- where as ID is alias thats means small name which is use at the place of dept_id
SELECT * FROM department where location='Bhopal';

-- SORTING DATA
SELECT * FROM department order by budget ASC;
SELECT * FROM department order by budget desc;

-- LIMITING RESULTS
SELECT * FROM department limit 5;
SELECT * FROM department order by budget ASC limit 5;
SELECT * FROM department limit 5, 5;