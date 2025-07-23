create table table2 (id serial primary key,
					 name varchar(100) ,
					 class varchar(50) ,
					 mark integer)
					 
	INSERT INTO table2 (id, name, class, mark) VALUES
	(1, 'Shameem', 8, 499),
	(2, 'Manoj', 9, 480),
	(3, 'Vishnu', 8, 470),
	(4, 'Sudhan', 10, 450),
	(5, 'Ajay', 9, 460),
	(6, 'Hari', 10, 490),
	(7, 'Rahul', 8, 455),
	(8, 'Kavin', 9, 442),
	(9, 'Arun', 10, 430),
	(10, 'Naveen', 8, 421);
	select * from table2
	select * from  table2 where id in(2,3,4,5)

	alter table table2 alter column class type integer
	using class::integer
	
	delete from table2 where id=6 
	
	update table2 set mark=450 where mark = 480
	
	select 5<>10
	select 'true'==true
	
	select distinct mark from table2 order by mark desc
	
	delete from table2 where mark <480
	delete from table2 where id in (1,2)
	insert into table2 (name, class , mark) values ('Rishi',10,500)
	insert into table2 (name, class , mark) values ('Rishi',9,500)
----foreign key
CREATE TABLE department_list (
  dept_id INT PRIMARY KEY,
  dept_name VARCHAR(50)
);

CREATE TABLE employee_list (
  emp_id INT PRIMARY KEY,
  emp_name VARCHAR(50),
  emp_age INT,
  dept_id INT REFERENCES department_list(dept_id)
);

INSERT INTO department_list(dept_id, dept_name) VALUES
(1, 'CSE'),
(2, 'IT'),
(3, 'MECH');

INSERT INTO employee_list(emp_id, emp_name, emp_age, dept_id) VALUES
(1, 'Arun', 25, 1),
(2, 'Divya', 29, 3),
(3, 'Kiran', 32, 2),
(4, 'Meena', 27, 1),
(5, 'Ravi', 30, 3),
(6, 'Sneha', 24, 2),
(7, 'Vikram', 35, 1),
(8, 'Pooja', 28, 2),
(9, 'Ajay', 31, 3),
(10, 'Neha', 26, 1);


SELECT * FROM department_list;
SELECT * FROM employee_list;


SELECT 
  employee_list.emp_id,
  employee_list.emp_name,
  employee_list.emp_age,
  department_list.dept_name,
  employee_list.dept_id
FROM employee_list
JOIN department_list
ON employee_list.dept_id = department_list.dept_id;


	