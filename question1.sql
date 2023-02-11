create database assignment;
use assignment;
CREATE TABLE employees (
  empid INT PRIMARY KEY, 
  name VARCHAR(30), 
  gender CHAR NOT NULL, 
  department VARCHAR(30)
);

INSERT into employees 
VALUES 
  (1, 'X', 'F', 'Finance');

INSERT into employees 
values 
  (2, 'Y', 'M', 'IT');

INSERT into employees 
values 
  (3, 'Z', 'M', 'HR');

INSERT into employees 
values 
  (4, 'W', 'F', 'IT');

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
