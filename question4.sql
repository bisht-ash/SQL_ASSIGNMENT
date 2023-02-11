CREATE TABLE email_id (
	candidate_id int PRIMARY KEY,
    email VARCHAR(30) NOT NULL
);


INSERT INTO email_id VALUES(45,'abc@gmail.com');
INSERT INTO email_id VALUES(23,'def@gmail.com');
INSERT INTO email_id VALUES(34,'bcf@gmail.com');
INSERT INTO email_id VALUES(21,'def@gmail.com');
INSERT INTO email_id VALUES(94,'def@gmail.com');
INSERT INTO email_id VALUES(95,'def@gmail.com');


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

