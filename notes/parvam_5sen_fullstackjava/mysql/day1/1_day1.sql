-- to show databases  
show databases;
create database student_management;
use student_management;

create table students(
	std_id int primary key,
    std_name varchar(50),
    std_roll int,
    std_email varchar(40)
);

insert into students(std_id, std_name, std_roll, std_email) 
values(1, "mohan",101,'mohan@gmail.com');



select * from students;
select std_name, std_email from students;
-- to add new column wiht default null 
alter table students
add column std_class_room varchar(20);

-- to add new column with default some value 
alter table students
add column std_class_room varchar(20) default 'cs103';

desc students;


INSERT INTO students (std_id, std_name, std_roll, std_email, std_class_room)
VALUES
(2, 'John Doe', 101, 'john.doe@example.com', 'cs103'),
(3, 'Jane Smith', 102, 'jane.smith@example.com', 'cs103'),
(4, 'Rahul Kumar', 103, 'rahul.kumar@example.com', 'cs103'),
(5, 'Priya Sharma', 104, 'priya.sharma@example.com', 'cs103'),
(6, 'Amit Verma', 105, 'amit.verma@example.com', 'cs103');

alter table students
drop column std_class_room;

select * from students limit 2;

select * from students where std_id=2;
-- we use offset and limit in pagination 
select * from students limit 3 offset 1;

update students
set std_class_room = 'cs405'
where std_id = 1;

-- delete perticular row 
delete from students 
where std_id=2;

delete from students where std_id = 3;

truncate students;

drop table students;

drop database student_management;

select database();