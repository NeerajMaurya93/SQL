select *from customers
--ALTER COLUMN AND DATA TYPE IN SQL
	--TO RENAME THE NAME COLUMN TO FULL-NAME
	ALTER TABLE users1
	rename column username to full_name;
	--TO CHANGE THE AGE COLUMN'S DATA TYPE FROM INT TO SMALEST
	ALTER TABLE users1
	ALTER COLUMN age  TYPE SMALLINT;
	--TO ADDING CHECK CONSTRAINT TO AGE COLUMN
	ALTER TABLE users1
	ADD CONSTRAINT AGE CHECK(age >18);
	--assending or desending orderd
	select * from users1 order by user_id ASC; 
	-- CHANGE THE TABLE NAME 
	ALTER TABLE users1
	RENAME TO customers;
	select * from customers order by user_id ASC; 
--HOW TO IMPORT DATA FROM CSV
	CREATE TABLE HOSPETAL (
	PATIENT_ID INT PRIMARY KEY,
	PATIENT_ADMISSION_DATE INT,
	PATIENT_FIRST_INITAL VARCHAR(50), 
	PATIENT_LAST_NAME VARCHAR(50) NOT NULL,
	PATIENT_GENDER VARCHAR(50) NOT NULL,
	PATIENT_AGE INT,
	PATIENT_RACE VARCHAR(50),
	DEPARTMENT_REFERRAL VARCHAR(50),
	PATIENT_ADMISSION_FLAG VARCHAR(50),
	PATIENT_SATISFACTION_SCORE VARCHAR(50),
	PATIENT_WAITTIME VARCHAR(50)
);
SELECT *FROM HOSPETAL
copy
HOSPETAL(Patient_Id, Patient_Admission_Date, Patient_First_Inital, Patient_Last_Name, Patient_Gender, Patient_Age, Patient_Race, Department_Referral, Patient_Admission_Flag, Patient_Satisfaction_Score, Patient_Waittime)
FROM 'C:/Users/DELL/OneDrive/Documents/Hospital Emergency Room Data.csv'
DELIMITER ','
CSV HEADER;