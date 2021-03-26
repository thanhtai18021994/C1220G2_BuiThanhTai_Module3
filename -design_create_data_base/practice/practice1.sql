drop database if exists constraint_user;
create database constraint_user;
use constraint_user;
create table contacts
(
id int(10) not null auto_increment,
last_name varchar(50) not null,
first_name varchar(50),
birthday date,
 CONSTRAINT contacts_pk PRIMARY KEY (id)
);
drop table contacts;
create table supplier
(
id int auto_increment not null,
`name` varchar(50) not null,
acount_rep varchar(50) default "DAT",
constraint constraint_key primary key(id)
);
drop table contacts,supplier;
alter table contacts
add full_name varchar(30)
after first_name;
alter table contacts
change column birthday Daybirth varchar(50) not null;

