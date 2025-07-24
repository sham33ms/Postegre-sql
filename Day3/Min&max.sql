CREATE TABLE Minmax (
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

--min & max

select min (marks) from students

select class , min (marks)
from students 
group by class

select subject, name, max (marks)
from students 
group by subject, name

SELECT s.subject, s.name, s.marks
FROM students s
JOIN (
    SELECT subject, MAX(marks) as score 
    FROM students
    GROUP BY subject
) AS max_scores
ON s.subject = max_scores.subject AND s.marks = max_scores.score;