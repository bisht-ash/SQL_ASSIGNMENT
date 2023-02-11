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