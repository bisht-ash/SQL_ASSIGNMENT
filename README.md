# SQL_ASSIGNMENT

### Question
<img src="https://github.com/bisht-ash/SQL_ASSIGNMENT/blob/main/screenshots/Screenshot%202023-02-12%20at%2010.48.41%20AM.png" width="500">

### Code
```
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
  ```
  
### Output
<img src="https://github.com/bisht-ash/SQL_ASSIGNMENT/blob/main/screenshots/Screenshot%202023-02-11%20at%202.35.07%20PM.png" width="500">
 
# 
### Question
<img src="https://github.com/bisht-ash/SQL_ASSIGNMENT/blob/main/screenshots/Screenshot%202023-02-12%20at%2010.48.53%20AM.png" width="500">

### Code
```
CREATE TABLE salary (
  name VARCHAR(30) NOT NULL, 
  jan INT,
  feb INT,
  mar INT
);

INSERT INTO salary VALUES('X',5200,9093,3832);
INSERT INTO salary VALUES('Y',9023,8942,4000);
INSERT INTO salary VALUES('Z',9834,8197,9903);
INSERT INTO salary VALUES('W',3244,4321,0293);

SELECT 
  name, 
  CASE WHEN jan > feb 
  AND jan > mar THEN jan WHEN feb > jan 
  AND feb > mar THEN feb ELSE mar END AS value, 
  CASE WHEN jan > feb 
  AND jan > mar THEN 'Jan' WHEN feb > jan 
  AND feb > mar THEN 'Feb' ELSE 'Mar' END AS month 
FROM 
  salary;
```

### Output
<img src="https://github.com/bisht-ash/SQL_ASSIGNMENT/blob/main/screenshots/Screenshot%202023-02-11%20at%202.45.14%20PM.png" width="500">

#
### Question
<img src="https://github.com/bisht-ash/SQL_ASSIGNMENT/blob/main/screenshots/Screenshot%202023-02-12%20at%2010.49.10%20AM.png" width="500">

### Code 
```
CREATE TABLE student_marks (
	candidate_id int PRIMARY KEY,
    marks int NOT NULL
);

INSERT INTO student_marks VALUES(1,98);
INSERT INTO student_marks VALUES(2,78);
INSERT INTO student_marks VALUES(3,87);
INSERT INTO student_marks VALUES(4,98);
INSERT INTO student_marks VALUES(5,78);

SELECT 
  marks, 
  ROW_NUMBER() OVER(
    ORDER BY 
      marks DESC
  ) as Postion, 
  GROUP_CONCAT(candidate_id) AS candidate_id 
FROM 
  student_marks 
GROUP BY 
  marks 
ORDER BY 
  marks DESC;
```

### Output
<img src="https://github.com/bisht-ash/SQL_ASSIGNMENT/blob/main/screenshots/Screenshot%202023-02-11%20at%203.11.31%20PM.png" width="500">

#
### Question
<img src="https://github.com/bisht-ash/SQL_ASSIGNMENT/blob/main/screenshots/Screenshot%202023-02-12%20at%2010.49.36%20AM.png" width="500">

### Code
```
CREATE TABLE email_id (
	candidate_id int PRIMARY KEY,
    email VARCHAR(30) NOT NULL
);


INSERT INTO email_id VALUES(45,'abc@gmail.com');
INSERT INTO email_id VALUES(23,'def@yahoo.com');
INSERT INTO email_id VALUES(34,'abc@gmail.com');
INSERT INTO email_id VALUES(21,'bcf@gmail.com');
INSERT INTO email_id VALUES(94,'def@yahoo.com');


DELETE FROM 
  email_id 
WHERE 
  NOT candidate_id IN (
    SELECT 
      * 
    FROM 
      (
        SELECT 
          MIN(candidate_id) 
        FROM 
          email_id 
        GROUP BY 
          email
      ) AS temp
  );
```

### Output
<img src="https://github.com/bisht-ash/SQL_ASSIGNMENT/blob/main/screenshots/Screenshot%202023-02-11%20at%2011.12.43%20PM.png" width="500">
<img src="https://github.com/bisht-ash/SQL_ASSIGNMENT/blob/main/screenshots/Screenshot%202023-02-12%20at%2010.45.53%20AM.png" width="500">
