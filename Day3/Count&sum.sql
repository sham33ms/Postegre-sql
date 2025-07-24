CREATE TABLE cntsm (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    class INTEGER,
    subject VARCHAR(20),
    marks INTEGER
);

INSERT INTO cntsm (name, class, subject, marks) VALUES
('Alice', 10, 'Math', 88),
('Bob', 10, 'Science', 88),
('Charlie', 10, 'Math', 67),
('Diana', 11, 'Math', 92),
('Ethan', 11, 'Science', 85),
('Farah', 11, 'Math', 79),
('George', 12, 'Science', 91),
('Hannah', 12, 'Math', 73);

--count
SELECT COUNT(*) FROM cntsm;

SELECT class, COUNT(*) AS total_students
FROM cntsm
GROUP BY class;



-- sum
SELECT SUM(marks) FROM cntsm;

SELECT subject, SUM(marks) AS total_marks
FROM cntsm
GROUP BY subject;


--avg

SELECT AVG(marks) FROM cntsm;

SELECT class, AVG(marks) AS avg_marks
FROM cntsm
GROUP BY class
HAVING AVG(marks) > 80;
