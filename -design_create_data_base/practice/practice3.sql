drop database if exists foreign_key;
create database foreign_key;
use foreign_key;
create table custumers
(
id int auto_increment primary key,
`name` varchar(50),
email varchar (100),
address varchar(100)
);
create table orders
(
id int auto_increment,
staff varchar(100),
primary key(id),
custumer_id int,
foreign key (id) references custumers(id)
);