--indexing
create table indx (id serial primary key, name varchar(50))
insert into  indx (name)  values ('shameem'),('Rishi'),('Raj')

alter 
create index idx on indx (name);

explain select name from indx where name='Rishi';