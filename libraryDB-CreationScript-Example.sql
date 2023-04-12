CREATE DATABASE libraryDB;
USE libraryDB;
CREATE TABLE author
(author_id int NOT NULL PRIMARY KEY, 
last_name varchar(20), 
first_name varchar(20), 
books_written int);
CREATE TABLE book 
(isbn int NOT NULL PRIMARY KEY, 
title varchar(30), 
publisher_id int,
 genre varchar(1), 
 total_pages int, 
 author_id int);
CREATE TABLE publisher 
(publisher_id int NOT NULL PRIMARY KEY, 
name varchar(20), 
street_address varchar(20), 
city varchar(15), 
state varchar(15), 
phone_number varchar(15));
CREATE TABLE person
	(library_card_number int NOT NULL PRIMARY KEY, 
    last_name varchar(20), 
    first_name varchar(20), 
    phone_number varchar(20), 
    email varchar (20), 
    street_address varchar (20), 
    city varchar(20), 
    state varchar(20), 
    zip_code int);
CREATE TABLE person_book(due_date date, library_card_number int, isbn int);