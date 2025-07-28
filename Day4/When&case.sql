CREATE TABLE studentsss (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50),
  marks INT
);

INSERT INTO studentsss (name, marks) VALUES
('Ravi', 92),
('Meena', 78),
('Suresh', 59),
('Anu', 66);


SELECT 
  name,
  marks,
  CASE
    WHEN marks >= 90 THEN 'A'
    WHEN marks >= 75 THEN 'B'
    WHEN marks >= 60 THEN 'C'
    ELSE 'F'
  END grade
FROM studentsss;