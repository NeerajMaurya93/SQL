-- MySQL Data Types

-- 1️ Numeric Data Types
-- | Category | Data Type     | Size      | Example                           |
-- | Numeric  | TINYINT       | 1 byte    | `age TINYINT` → 25                |
-- | Numeric  | SMALLINT      | 2 bytes   | `year SMALLINT` → 2024            |
-- | Numeric  | MEDIUMINT     | 3 bytes   | `count MEDIUMINT` → 500000        |
-- | Numeric  | INT / INTEGER | 4 bytes   | `id INT` → 1001                   |
-- | Numeric  | BIGINT        | 8 bytes   | `population BIGINT` → 9876543210  |
-- | Numeric  | FLOAT         | 4 bytes   | `price FLOAT` → 45.67             |
-- | Numeric  | DOUBLE        | 8 bytes   | `salary DOUBLE` → 56789.55        |
-- | Numeric  | DECIMAL(M,D)  | Variable  | `amount DECIMAL(10,2)` → 99999.99 |
-- | Numeric  | BIT           | 1–8 bytes | `flag BIT(1)` → 1                 |

-- 2️ String (Character) Data Types
-- | Category | Data Type    | Size                | Example                              |
-- | String   | CHAR(n)      | 0–255 chars         | `gender CHAR(1)` → 'M'               |
-- | String   | VARCHAR(n)   | 0–65535 chars       | `name VARCHAR(50)` → 'Neeraj'        |
-- | String   | TINYTEXT     | 255 chars           | `remark TINYTEXT`                    |
-- | String   | TEXT         | 65,535 chars        | `description TEXT`                   |
-- | String   | MEDIUMTEXT   | 16 MB               | `content MEDIUMTEXT`                 |
-- | String   | LONGTEXT     | 4 GB                | `article LONGTEXT`                   |
-- | String   | ENUM         | Up to 65,535 values | `status ENUM('Active','Inactive')`   |
-- | String   | SET          | Up to 64 values     | `skills SET('SQL','Python','Excel')` |
-- | String   | BINARY(n)    | 0–255 bytes         | `hash BINARY(16)`                    |
-- | String   | VARBINARY(n) | Variable            | `token VARBINARY(255)`               |

-- 3️ Date & Time Data Types
-- | Category  | Data Type | Size    | Example                        |
-- | Date/Time | DATE      | 3 bytes | `dob DATE` → '1999-05-12'      |
-- | Date/Time | TIME      | 3 bytes | `login_time TIME` → '14:30:00' |
-- | Date/Time | DATETIME  | 8 bytes | `created_at DATETIME`          |
-- | Date/Time | TIMESTAMP | 4 bytes | `updated_at TIMESTAMP`         |
-- | Date/Time | YEAR      | 1 byte  | `year YEAR` → 2025             |

-- 4️ Boolean Data Type
-- | Category | Data Type      | Size   | Example                    |
-- | Boolean  | BOOLEAN / BOOL | 1 byte | `is_active BOOLEAN` → TRUE |


-- 5️ Binary / Large Object Data Types
-- | Category | Data Type  | Size      | Example            |
-- | Binary   | TINYBLOB   | 255 bytes | `image TINYBLOB`   |
-- | Binary   | BLOB       | 65 KB     | `file BLOB`        |
-- | Binary   | MEDIUMBLOB | 16 MB     | `video MEDIUMBLOB` |
-- | Binary   | LONGBLOB   | 4 GB      | `data LONGBLOB`    |

-- 6️ JSON & Spatial Data Types
-- | Category | Data Type  | Size       | Example             |
-- | JSON     | JSON       | Up to 1 GB | `details JSON`      |
-- | Spatial  | GEOMETRY   | Variable   | `location GEOMETRY` |
-- | Spatial  | POINT      | Variable   | `point POINT`       |
-- | Spatial  | LINESTRING | Variable   | `route LINESTRING`  |
-- | Spatial  | POLYGON    | Variable   | `area POLYGON`      |


-- MySQL Constraints Table
-- | Constraint         | Description                                         | Example                                      |
-- | **NOT NULL**       | Ensures a column cannot have NULL values            | `name VARCHAR(50) NOT NULL`                  |
-- | **UNIQUE**         | Ensures all values in a column are unique           | `email VARCHAR(100) UNIQUE`                  |
-- | **PRIMARY KEY**    | Uniquely identifies each record (NOT NULL + UNIQUE) | `id INT PRIMARY KEY`                         |
-- | **FOREIGN KEY**    | Creates relationship between two tables             | `FOREIGN KEY (user_id) REFERENCES users(id)` |
-- | **CHECK**          | Limits values based on condition (MySQL 8.0+)       | `age INT CHECK (age >= 18)`                  |
-- | **DEFAULT**        | Sets a default value if none is provided            | `status VARCHAR(20) DEFAULT 'Active'`        |
-- | **AUTO_INCREMENT** | Automatically generates unique numbers              | `id INT AUTO_INCREMENT`                      |
-- | **INDEX**          | Improves query performance                          | `INDEX idx_name (name)`                      |
-- | **COMPOSITE KEY**  | Combination of multiple columns as primary key      | `PRIMARY KEY (student_id, course_id)`        |


-- SQL WHERE Clause Operators
-- | Operator / Keyword | Meaning                          | Example                                                                   |
-- | `=`                | Equal to                         | `SELECT * FROM department WHERE dept_id = 5;`                             |
-- | `!=` or `<>`       | Not equal to                     | `SELECT * FROM department WHERE location != 'Mumbai';`                    |
-- | `>`                | Greater than                     | `SELECT * FROM department WHERE budget > 3000000;`                        |
-- | `<`                | Less than                        | `SELECT * FROM department WHERE budget < 2000000;`                        |
-- | `>=`               | Greater than or equal to         | `SELECT * FROM department WHERE budget >= 2500000;`                       |
-- | `<=`               | Less than or equal to            | `SELECT * FROM department WHERE budget <= 1800000;`                       |
-- | `BETWEEN......and` | Value within a range (inclusive) | `SELECT * FROM department WHERE budget BETWEEN 2000000 AND 4000000;`      |
-- | `IN`               | Matches any value in a list      | `SELECT * FROM department WHERE location IN ('Delhi', 'Mumbai');`         |
-- | `NOT IN`           | Not matching values in a list    | `SELECT * FROM department WHERE dept_name NOT IN ('HR', 'Finance');`      |
-- | `LIKE`             | Pattern matching                 | `SELECT * FROM department WHERE dept_name LIKE 'S%';`                     |
-- | `%`                | Matches any number of characters | `SELECT * FROM department WHERE dept_name LIKE '%Management%';`           |
-- | `_`                | Matches exactly one character    | `SELECT * FROM department WHERE dept_name LIKE 'M_rketing';`              |
-- | `IS NULL`          | Checks for NULL values           | `SELECT * FROM department WHERE budget IS NULL;`                          |
-- | `IS NOT NULL`      | Checks for non-NULL values       | `SELECT * FROM department WHERE location IS NOT NULL;`                    |
-- | `AND`              | All conditions must be true      | `SELECT * FROM department WHERE budget > 2000000 AND location = 'Delhi';` |
-- | `OR`               | Any condition must be true       | `SELECT * FROM department WHERE location = 'Pune' OR location = 'Noida';` |
-- | `NOT`              | Negates a condition              | `SELECT * FROM department WHERE NOT budget < 1500000;`                    |


-- SQL STRING FUNCTIONS
-- | Function        | Definition                                        | Example Query                                 | Output         |
-- | `UPPER()`       | Converts text to uppercase                        | `SELECT UPPER('sql tutorial');`               | `SQL TUTORIAL` |
-- | `LOWER()`       | Converts text to lowercase                        | `SELECT LOWER('SQL TUTORIAL');`               | `sql tutorial` |
-- | `LENGTH()`      | Returns number of characters                      | `SELECT LENGTH('Database');`                  | `8`            |
-- | `CHAR_LENGTH()` | Returns character count (same as LENGTH in MySQL) | `SELECT CHAR_LENGTH('Data');`                 | `4`            |
-- | `CONCAT()`      | Joins two or more strings                         | `SELECT CONCAT('SQL',' ','Server');`          | `SQL Server`   |
-- | `CONCAT_WS()`   | Concatenates with separator                       | `SELECT CONCAT_WS('-', '2026','01','23');`    | `2026-01-23`   |
-- | `SUBSTRING()`   | Extracts part of a string                         | `SELECT SUBSTRING('Database',1,4);`           | `Data`         |
-- | `LEFT()`        | Extracts left characters                          | `SELECT LEFT('Database',4);`                  | `Data`         |
-- | `RIGHT()`       | Extracts right characters                         | `SELECT RIGHT('Database',4);`                 | `base`         |
-- | `TRIM()`        | Removes spaces from both sides                    | `SELECT TRIM('  SQL  ');`                     | `SQL`          |
-- | `LTRIM()`       | Removes left spaces                               | `SELECT LTRIM('   SQL');`                     | `SQL`          |
-- | `RTRIM()`       | Removes right spaces                              | `SELECT RTRIM('SQL   ');`                     | `SQL`          |
-- | `REPLACE()`     | Replaces part of string                           | `SELECT REPLACE('SQL Server','Server','DB');` | `SQL DB`       |
-- | `INSTR()`       | Finds position of substring                       | `SELECT INSTR('Database','base');`            | `5`            |
-- | `LOCATE()`      | Finds position of substring                       | `SELECT LOCATE('a','Database');`              | `2`            |
-- | `REVERSE()`     | Reverses a string                                 | `SELECT REVERSE('SQL');`                      | `LQS`          |
-- | `REPEAT()`      | Repeats string                                    | `SELECT REPEAT('SQL ',3);`                    | `SQL SQL SQL ` |
-- | `LPAD()`        | Pads string from left                             | `SELECT LPAD('SQL',6,'*');`                   | `***SQL`       |
-- | `RPAD()`        | Pads string from right                            | `SELECT RPAD('SQL',6,'*');`                   | `SQL***`       |
-- | `SPACE()`       | Inserts spaces                                    | `SELECT SPACE(5);`                            | `(5 spaces)`   |
-- | `ASCII()`       | Returns ASCII value                               | `SELECT ASCII('A');`                          | `65`           |


-- SQL NUMERIC FUNCTIONS
-- | Function               | Definition                        | Example Query                | Output     |
-- | `ABS()`                | Returns absolute (positive) value | `SELECT ABS(-25);`           | `25`       |
-- | `CEIL()` / `CEILING()` | Rounds number **up**              | `SELECT CEIL(12.3);`         | `13`       |
-- | `FLOOR()`              | Rounds number **down**            | `SELECT FLOOR(12.9);`        | `12`       |
-- | `ROUND()`              | Rounds to nearest value           | `SELECT ROUND(12.56);`       | `13`       |
-- | `ROUND(x,n)`           | Rounds to **n** decimals          | `SELECT ROUND(12.567,2);`    | `12.57`    |
-- | `TRUNCATE()`           | Cuts decimals without rounding    | `SELECT TRUNCATE(12.567,2);` | `12.56`    |
-- | `MOD()`                | Returns remainder                 | `SELECT MOD(17,5);`          | `2`        |
-- | `%`                    | Modulus operator                  | `SELECT 17 % 5;`             | `2`        |
-- | `POWER()` / `POW()`    | Returns x raised to y             | `SELECT POWER(2,3);`         | `8`        |
-- | `SQRT()`               | Square root of number             | `SELECT SQRT(81);`           | `9`        |
-- | `SIGN()`               | Returns sign of number            | `SELECT SIGN(-10);`          | `-1`       |
-- | `RAND()`               | Generates random number (0–1)     | `SELECT RAND();`             | `0.3748`   |
-- | `PI()`                 | Returns value of π                | `SELECT PI();`               | `3.141593` |
-- | `EXP()`                | Returns e raised to power         | `SELECT EXP(1);`             | `2.718282` |
-- | `LOG()`                | Natural logarithm                 | `SELECT LOG(10);`            | `2.302585` |
-- | `LOG10()`              | Base-10 logarithm                 | `SELECT LOG10(100);`         | `2`        |
-- | `GREATEST()`           | Returns largest value             | `SELECT GREATEST(10,20,5);`  | `20`       |
-- | `LEAST()`              | Returns smallest value            | `SELECT LEAST(10,20,5);`     | `5`        |


-- SQL Aggregate Functions
-- | Function                    | Definition                                                           | Example Query                                       | Output     |
-- | --------------------------- | -------------------------------------------------------------------- | --------------------------------------------------- | ---------- |
-- | **COUNT()**                 | Returns the total number of rows (excluding NULL unless `*` is used) | `SELECT COUNT(*) FROM employees;`                   | `25`       |
-- | **SUM()**                   | Returns the total sum of a numeric column                            | `SELECT SUM(salary) FROM employees;`                | `850000`   |
-- | **AVG()**                   | Returns the average value of a numeric column                        | `SELECT AVG(salary) FROM employees;`                | `34000`    |
-- | **MIN()**                   | Returns the smallest value in a column                               | `SELECT MIN(salary) FROM employees;`                | `18000`    |
-- | **MAX()**                   | Returns the largest value in a column                                | `SELECT MAX(salary) FROM employees;`                | `90000`    |
-- | **COUNT(DISTINCT)**         | Counts unique (non-duplicate) values                                 | `SELECT COUNT(DISTINCT department) FROM employees;` | `5`        |
-- | **VARIANCE() / VAR_POP()**  | Returns population variance of a numeric column                      | `SELECT VAR_POP(salary) FROM employees;`            | `12000000` |
-- | **VAR_SAMP()**              | Returns sample variance                                              | `SELECT VAR_SAMP(salary) FROM employees;`           | `12500000` |
-- | **STDDEV() / STDDEV_POP()** | Returns population standard deviation                                | `SELECT STDDEV_POP(salary) FROM employees;`         | `3464.1`   |
-- | **STDDEV_SAMP()**           | Returns sample standard deviation                                    | `SELECT STDDEV_SAMP(salary) FROM employees;`        | `3600.5`   |
