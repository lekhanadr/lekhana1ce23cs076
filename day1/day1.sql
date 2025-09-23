show databases;
create database student_managementes;
use student_managementes;

create table students(
	std_id int primary key,
    std_name varchar(50),
    std_roll int,
    std_email varchar(40)
);

insert into students (std_id,std_name,std_roll,std_email)values(2,"lekhu",101,'lekhu6@gmail.com'),
(3, 'Bob Smith', 102, 'bob.smith@example.com'),
(4, 'Charlie Brown', 103, 'charlie.brown@example.com'),
(5, 'Diana Prince', 104, 'diana.prince@example.com'),
(6, 'Ethan Hunt', 105, 'ethan.hunt@example.com');
    
select * from students;
select std_name,std_email from students;
-- to add new cloumn with default null
alter table students
add column std_class_room varchar(20);

-- to add new cloumn with default null
alter table students
add column std_class_room varchar(20) default 'cs103';

desc students;

alter table students
drop column std_class_room;
select * from students limit 2;
select * from students where std_id=2;

select * from students limit 3 offset 1;

update students
set std_class_room = 'cs405'
where std_id = 1;

delete from students  where std_id = 3;
 truncate students;
  
  drop table students;
  
  drop database student_managementes;
  
  select database();
  











