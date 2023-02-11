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