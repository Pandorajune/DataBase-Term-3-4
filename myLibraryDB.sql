CREATE DATABASE myLibraryDB;
USE myLibraryDB;
CREATE TABLE checkout_info
(isbn int NOT NULL PRIMARY KEY,
library_card_number int,
checkout_date date);
CREATE TABLE publisher_info
(publisher_id int NOT NULL PRIMARY KEY,
first_name varchar(20),
last_name varchar(20),
phone_number varchar(20));
CREATE TABLE patron_info
(library_card_number int NOT NULL PRIMARY KEY,
first_name varchar(20),
last_name varchar(20), 
address varchar(20), 
city varchar(20), 
sate varchar(20), 
zipcode int,
phone_number varchar(20),
email varchar(20));
CREATE TABLE author_info
(author_id int NOT NULL PRIMARY KEY,
first_name varchar(20), 
last_name varchar(20));
CREATE TABLE book_info
(isbn int NOT NULL PRIMARY KEY,
publisher_id int,
author_id int,
title varchar(20),
genre varchar(20),
cover_typer varchar(20));