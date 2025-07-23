--notnull & unique
create table tab1 (
	id serial primary key,
	name varchar(50) not null,
	no int unique
)

create table tab2 (
	id serial primary key,
	name varchar(50),
	no int 
)

INSERT INTO tab1(name, no) VALUES
('Shameem', 234),
('Divya', 456),
('Arun', 789),
('Sneha', 321),
('Vikram', 654),
('Pooja', 987),
('Ravi', 112),
('Meena', 334),
('Kiran', 556),
('Ajay', 778);

insert into tab1 (no) values (797)

update tab1 set no=778 where id =9
update tab1 set no=779 where id =9

update tab1 set name='rahul' where id=3


insert into tab2(no) values(56)
insert into tabe2

select *from tab1
select * from tab2


--unique
create table tab3 (
	id serial primary key,
	name varchar(50) unique
);
insert into tab3 (name ) values('  ');


select * from tab3