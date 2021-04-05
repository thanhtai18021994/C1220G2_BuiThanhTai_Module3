create database student_management;
drop database student_management;
use student_management;
create table student1 (
id int primary key,
`name` varchar(50),
date_of_birth date
);
drop table student1;
insert into student1 (id,`name`,date_of_birth)
values
(1,'nguyen anh quan','2005-02-04'),
(2,'duong quang lam','2006-02-03');
select `name`
from student_management.student1
where id=1;



