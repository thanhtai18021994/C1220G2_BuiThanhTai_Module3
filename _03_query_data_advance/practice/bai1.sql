drop database if exists query_data_advance;
create database query_data_advance;
use query_data_advance;
create table student(
id int primary key auto_increment,
`name` varchar(50),
age int not null,
school varchar(50)
);
insert into  student(`name`,age,school)
values
('hai',18,'nguyen khuyen'),
('kha',17,'nguyen khuyen'),
('tuan',20,'nguyen dinh chi'),
('khoi',18,'nguyen trai')
;
select * from student
where id=1 or age>=18;
select * from student
where id=1 or age>=18;
select * from student
where not id=2;
