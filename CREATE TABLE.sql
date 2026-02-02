USE userdb;
CREATE TABLE users(
userId int primary key auto_increment,
username varchar(50) not null,
useremail varchar(50) unique,
userphone int,
age int check(age>=18)
);
-- ADD NEW COLUMN TO AN EXISTING TABLE USING (ALTER TABLE)
ALTER TABLE users ADD userAddress varchar (100);
ALTER TABLE users ADD userStatus tinyint;

-- MODIFYING COLUMN TYPES OR ATTRIBUTES
ALTER TABLE users modify useremail varchar (100) NOT NULL;

-- RENAMING COLUMNS
ALTER TABLE users change column userAddress address varchar(50);

-- DELETE COLUMN
ALTER TABLE users DROP COLUMN address;

-- RENAMING TABLES
ALTER TABLE users rename to userlist;

-- INSERT DATA IN TABLE
INSERT INTO users (username, useremail, userphone, age)
VALUES('rahul_k', 'rahul.kumar@gmail.com', '76543210', 24),
('neha_s', 'neha.sharma@yahoo.com', '9123456789', 28),
('amit_p', 'amit.patel@outlook.com', '9988776655', 31),
('priya_m', 'priya.mehta@gmail.com', '9090909090', 22),
('rohit_s', 'rohit.singh@gmail.com', '9812345678', 35);

ALTER TABLE users modify userphone varchar (15);

-- DELETE ,DROP , TRUNCATE , UPDATE
DELETE FROM users where userId=2; -- delete only one row
TRUNCATE TABLE users; -- DELETE ALL DATA FROM TABLE
DROP TABLE users; -- DELETE TABLE 
UPDATE users SET username='Rahul'where userId=1;