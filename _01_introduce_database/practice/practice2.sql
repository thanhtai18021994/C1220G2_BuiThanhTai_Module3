use student_management;
drop table student2;
create  table student2 as
select id,`name`
from student1; 
alter table student2
add email_main varchar(100),add sex varchar(20);
alter table student2
drop column id;
alter table student_management.student2
change `name` `Name` varchar(50);
alter table student_management.student2
modify `Name` varchar(150); 