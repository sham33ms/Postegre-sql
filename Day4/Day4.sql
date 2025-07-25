
-- Create books table
CREATE TABLE books (
    book_id INT PRIMARY KEY,
    book_title VARCHAR(100)
);

-- Insert data into books
INSERT INTO books (book_id, book_title) VALUES
(301, 'Wings of Fire'),
(302, 'The Alchemist'),
(303, 'Rich Dad Poor Dad'),
(304, 'Atomic Habits'),
(305, 'The Monk Who Sold...'),
(306, 'Zero to One'),
(307, 'Deep Work'),
(308, 'Sapiens'),
(309, 'Think Like a Monk'),
(310, 'Digital Minimalism'),
(311, 'Start With Why'),
(312, 'The Power of Habit'),
(313, 'Can’t Hurt Me'),
(314, 'Ikigai'),
(315, 'Grit');

-- Create members table
CREATE TABLE members (
    member_id INT PRIMARY KEY,
    member_name VARCHAR(50),
    borrowed_book_id INT
);

-- Insert data into members
INSERT INTO members (member_id, member_name, borrowed_book_id) VALUES
(1, 'Kavya', 301),
(2, 'Manish', NULL),
(3, 'Neha', 303),
(4, 'Omkar', NULL),
(5, 'Priya', 302),
(6, 'Rahul', NULL),
(7, 'Sneha', 308),
(8, 'Arun', 307),
(9, 'Divya', NULL),
(10, 'Riya', 310),
(11, 'Lakshmi', 305),
(12, 'Vinay', 312),
(13, 'Meena', NULL),
(14, 'Ramesh', 313),
(15, 'Sanjana', NULL);


select * from books
select *from members



select member_id, member_name, book_title
from members 
left join  books on members.borrowed_book_id= books.book_id


select member_id, member_name, book_title
from members 
right join  books on members.borrowed_book_id= books.book_id



select member_id, member_name, book_title
from members 
left join  books on books.book_id= members.borrowed_book_id



select member_id, book_id,member_name, book_title
from members 
full join  books on members.borrowed_book_id= books.book_id


SELECT book_id, book_title
FROM books
WHERE book_id NOT IN (
    SELECT borrowed_book_id FROM members WHERE borrowed_book_id IS NOT NULL
);



SELECT 
    m.member_id,
    m.member_name,
    COALESCE(b.book_title, 'No Book Borrowed') AS borrowed_book
FROM 
    members m
LEFT JOIN 
    books b ON m.borrowed_book_id = b.book_id;

SELECT 
    b.book_id,
    b.book_title,
    COALESCE(m.member_name, 'No Book Borrowed') AS borrowed_book,
	coalesce(m.member_id,  0) as member_id
FROM 
    books b
LEFT JOIN 
    members m ON m.borrowed_book_id = b.book_id;
