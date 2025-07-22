CREATE TABLE table1(
	id SERIAL PRIMARY KEY,
	name VARCHAR(100),
	role VARCHAR(50),
	salary INTEGER)
	
--Read
	SELECT * fROM table1
	select * from table2
	select name from table1
	select role from table1
	SELECT name, salary FROM table1;
	SELECT * FROM table1 WHERE role = 'Developer';
	SELECT * FROM table1 ORDER BY salary DESC;
	SELECT * FROM table1 WHERE name LIKE 'S%';
	SELECT * FROM table1 ORDER BY id;
	select salary ,role from table1
	select * from table1 where name like '%Shameem'
	select * from table1 where salary>50000
	select * from table1 where salary<10000

--updtae
	update table1 set salary=70000 where salary<6000
	UPDATE table1 SET salary = 85000 WHERE name = 'Shameem';
	UPDATE table1 SET role = 'Senior Developer', salary = 90000 WHERE id = 2;
	UPDATE table1 SET place = 'Nagercoil';
	UPDATE table1
SET place = CASE 
    WHEN id % 2 = 0 THEN 'Nagercoil'      -- Odd IDs
    ELSE 'Kanyakumari'                    -- Even IDs
END;


--delete
	delete from table1 where id=5
	
--alter
	alter table table1  add column Place varchar(50)
	alter table table1 rename place to Native
	alter table table1 rename to table2
	alter table table2 rename to table1
	
--distinct
	select distinct 

--create
	insert into table1 (id,name, role, salary)values (1,'Alice', 'Developer',60000) 
	insert into table1 (id,name, role, salary)values (2,'Shameem', 'Developer',80000) 
	insert into table1 (id,name, role, salary)values (3,'Rishi', 'Developer',90000)
	insert into table1 (id,name, role, salary)values (4,'Shameem', 'Developer',50000)
	insert into table1 (id,name, role, salary)values (5,'Shameem', 'Developer',5000), (6,'Raj', 'Developer',56000),(7,'Shamee', 'Developer',75000)
	INSERT INTO table1 (id, name, role, salary) VALUES 
		(8, 'Anjali', 'Tester', 45000),
		(9, 'Ravi', 'Manager', 95000),
		(10, 'Neha', 'Developer', 70000),
		(11, 'Suresh', 'Tester', 42000),
		(12, 'Kavya', 'Developer', 67000),
		(13, 'Harish', 'Developer', 64000),
		(14, 'Divya', 'HR', 50000),
		(15, 'Abdul', 'Developer', 71000),
		(16, 'Sneha', 'Designer', 58000),
		(17, 'Deepak', 'Tester', 46000);
