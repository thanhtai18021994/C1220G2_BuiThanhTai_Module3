create database book_management;
use book_management;
create table students (
    student_number int primary key,
    student_name varchar(50),
    address varchar(50),
    email varchar(50),
    image varchar(40)
);
create table books (
    code_book varchar(50) primary key,
    name_book varchar(50) not null,
    publishing varchar(50) not null,
    author varchar(50) not null,
    publishing_year date,
    pulishing_number int not null,
    price double not null,
    image varchar(100)
);
create table category (





