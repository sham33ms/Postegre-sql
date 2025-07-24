CREATE TABLE groupbytable (
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

--groupby

SELECT subject, class, SUM(marks)
FROM students
GROUP BY subject, class;

select subject,class, sum (marks) as scores , count (class)
from students
group by subject , class