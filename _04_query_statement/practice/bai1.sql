use query_data_advance;
create table practice_groupBy(
codeStudent varchar(50) primary key,
name_student varchar(50) not null,
score int not null
);
insert into practice_groupBy(codeStudent,name_student,score)
values
('SV_002','tai',10),
('SV_005','hai',10),
('SV_001','tai',12),
('SV_003','nam2',11),
('SV_006','nam',11)
;
select * from practice_groupBy
where name_student='tai' and score=10;
select codeStudent,name_student from practice_groupBy
where not name_student='tai'
group by name_student
;

select name_student,score,sum(name_student) from practice_groupBy;
select concat(codeStudent,"  ",name_student) from practice_groupBy;
select *,count(score) as s from practice_groupBy
where score>10
having s>1;
select avg(score) from practice_groupBy;
select name_student from practice_groupBy
where score=10 ;
drop table practice_groupBy;
create table teachers(
id_teacher int primary key,
name_teacher varchar(50) not null,
school varchar(50) not null
);
create table my_student(
id_student int primary key,
name_student varchar(50) not null,
school varchar(50) not null
);
insert into teachers
values
(1,'tai','code'),
(2, 'thao','gym')
;
insert into my_student
values
(1,'tuan','code'),
(2, 'duong','bach khoa')
;
select id_student,name_student,name_teacher 
from my_student inner join teachers
on my_student.school= teachers.school;

select id_student,name_student,name_teacher 
from my_student left join teachers
on my_student.school= teachers.school;

select id_student,name_student,name_teacher 
from my_student right join teachers
on my_student.school= teachers.school;
select min(name_student),codeStudent from practice_groupBy;

-- select codeStudent,sum(score) as s from practice_groupBy group by name_student   having s>10;
-- select codeStudent,count(score) from practice_groupBy where score>10;
-- select codeStudent,count(score) as s from practice_groupBy group by score having s>1;
-- select codeStudent,count(score) as s from practice_groupBy group by score ;