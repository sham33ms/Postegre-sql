CREATE TABLE havingtable (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    class INTEGER,
    subject VARCHAR(20),
    marks INTEGER
);

INSERT INTO students (name, class, subject, marks) VALUES
('Alice', 10, 'Math', 88),
('Bob', 10, 'Science', 88),
('Charlie', 10, 'Math', 67),
('Diana', 11, 'Math', 92),
('Ethan', 11, 'Science', 85),
('Farah', 11, 'Math', 79),
('George', 12, 'Science', 91),
('Hannah', 12, 'Math', 73);


--having

SELECT class, AVG(marks)
FROM students
GROUP BY class
HAVING AVG(marks) > 85

SELECT class, AVG(marks)
FROM students
GROUP BY class
HAVING AVG(marks) > 80

SELECT subject,  COUNT(*) AS student_count, AVG(marks) AS avg_score
FROM students
GROUP BY subject
HAVING COUNT(*) > 3 AND AVG(marks) > 75;

SELECT subject, class,  COUNT(*) AS student_count, AVG(marks) AS avg_score
FROM students
GROUP BY subject, class
HAVING COUNT(*) > 0 AND AVG(marks) > 75;