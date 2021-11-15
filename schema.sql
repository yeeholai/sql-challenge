--to drop all tables in order of dependencies 
-- drop table if exists titles;
-- drop table if exists salaries;
-- drop table if exists department_employees;
-- drop table if exists department_managers;
-- drop table if exists departments;
-- drop table if exists employees;

--Create tables 6 tables

create table employees(
emp_no integer not null primary key,
emp_title_id varchar,
birth_date date not null,
first_name varchar not null,
last_name varchar not null,
sex varchar not null,
hire_date date not null);

CREATE TABLE departments(
dept_no varchar not null primary key,
dept_name varchar not null	
);

--junction table
CREATE TABLE department_managers(
dept_no varchar not null,
emp_no integer not null,
foreign key (emp_no) references employees(emp_no),
foreign key (dept_no) references departments(dept_no)	
);

CREATE TABLE salaries(
emp_no integer not null primary key,
salary integer not null,
foreign key (emp_no) references employees(emp_no)	
);

--junction table
CREATE TABLE department_employees(
emp_no integer not null,
dept_no varchar not null,
foreign key (dept_no) references departments(dept_no),
foreign key (emp_no) references employees(emp_no)
);

CREATE TABLE titles(
emp_title_id varchar not null Primary Key,
title varchar not null,
foreign key (emp_title_id) references titles(emp_title_id)
);

--View data from tables
select * from titles;
select * from salaries;
select * from department_employees;
select * from department_managers;
select * from departments;
select * from employees;