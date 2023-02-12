CREATE DATABASE assignment;
USE assignment;
CREATE TABLE employees (
  empid INT PRIMARY KEY, 
  name VARCHAR(30), 
  gender CHAR NOT NULL, 
  department VARCHAR(30)
);

INSERT INTO employees VALUES (1, 'X', 'F', 'Finance');
INSERT INTO employees VALUES (2, 'Y', 'M', 'IT');
INSERT INTO employees VALUES (3, 'Z', 'M', 'HR');
INSERT into employees VALUES (4, 'W', 'F', 'IT');

SELECT
  department, 
  SUM(
    CASE WHEN gender = 'F' THEN 1 ELSE 0 END
  ) AS no_of_girls, 
  SUM(
    CASE WHEN gender = 'M' THEN 1 ELSE 0 END
  ) AS no_of_boys 
FROM  
  employees 
GROUP BY 
  department;
