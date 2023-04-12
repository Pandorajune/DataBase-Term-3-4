CREATE DATABASE schoolDB;
USE schoolDB;

CREATE TABLE student(
studnet_id int NOT NULL PRIMARY KEY, 
first_name varchar(20), 
last_name varchar(20), 
gender varchar(1), 
birthdate date,
street_address varchar(50),
city varchar(25),
state varchar(20),
zip_code varchar(10),
phone varchar(20),
grade varchar(20),
email varchar(20));

CREATE TABLE locker(
locker_id int NOT NULL PRIMARY KEY,
student_id int,
locker_number varchar(10),
combination varchar(20));

CREATE TABLE instructor(
instructor_id int NOT NULL PRIMARY KEY,
first_name varchar(25),
last_name varchar(30),
birthdate date);

CREATE TABLE computer(
computer_id int NOT NULL PRIMARY KEY,
serial_number varchar(30),
brand varchar(10),
type varchar(10));

CREATE TABLE classroom(
classroom_id int NOT NULL PRIMARY KEY,
computer_id varchar(20),
location varchar(10),
number_of_seats int);

CREATE TABLE class(
class_id int NOT NULL PRIMARY KEY,
subject varchar(20),
instructor_id varchar(20),
classroom_id int,
credit_hours int);

CREATE TABLE student_class(
student_class_id int NOT NULL PRIMARY KEY,
student_id int,
class_id int);

SELECT* FROM student WHERE gender IN ("F");
SELECT first_name, last_name, street_address, city, state, zip_code FROM student WHERE state IN ("California");
SELECT* FROM student ORDER BY last_name;
SELECT* FROM computer WHERE brand IN ("HP");
SELECT* FROM computer WHERE type IN ("desktop");
SELECT subject, credit_hours FROM class;
SELECT* FROM class WHERE subject IN ("Physics 100", "Programming 200");
SELECT locker_number, combination FROM locker;
SELECT subject, credit_hours FROM class WHERE credit_hours IN ("4");
