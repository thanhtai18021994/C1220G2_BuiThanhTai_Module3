create database student_management;
use student_management;
create table Student (
id int primary key,
`name` varchar(50),
date_of_birth date
);
insert into Student(id,`name`,data_of_birth)
values
(123,'Bui thanh tai',2020-04-03),
(198,'Nguyen van a',2020-04-03),
(675,'Duong van b',2020-04-03),
(908,'Pahm van d',2020-04-03);
delete from Student
where id=908;