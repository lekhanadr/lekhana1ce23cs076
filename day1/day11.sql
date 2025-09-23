show databases;
create database employee_management_system;
use employee_management_system;

create table employees(
   emp_id bigint primary key auto_increment,
   name varchar(60) not null,
   job_title varchar(65) not null,
   phone_no bigint,
   salary decimal(10,2) not null,
   dept_id bigint,
   project_id bigint,
   foreign key(dept_id) references departments(dept_id),
   foreign key(project_id) references projects(project_id)
   
);
   
create table departments(
  dept_id bigint primary key auto_increment,
  dept_name varchar(50) not null
);

create table projects(
   project_id bigint primary key auto_increment,
   project_name varchar(50) not null
);

  