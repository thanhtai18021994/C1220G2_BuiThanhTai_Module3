drop database if exists constraint_user ;
create database constrain_user;
use constrain_user;
create table users
(
user_id int auto_increment primary key,
`name` varchar(50)
);
create table userroles
(
user_id int not null,
user_name varchar(50),
primary key (user_id),
foreign key (user_id) references users (user_id));
alter table userroles
change column user_name user_Name varchar(50);
alter table userroles
modify column user_name varchar(100);
alter table userroles
drop primary key;

