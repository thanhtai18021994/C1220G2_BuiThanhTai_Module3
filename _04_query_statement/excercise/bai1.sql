create database function_query;
use function_query;
create table mytable(
id int not null,
name_student varchar(50) not null,
age int not null,
course varchar(50) not null,
fee int not null
);
insert into mytable(id,name_student,age,course,fee)
values
(1,'hoang',21,'cntt',4000),
(2,'viet',19,'dtvt',3000)
;
select *
from mytable
where name_student='hoang';
select sum(fee)
from mytable
where name_student='hoang'
group by name_student;
select * 
from mytable
group by name_student;