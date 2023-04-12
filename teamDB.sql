CREATE DATABASE teamDB;
USE teamDB;
CREATE TABLE player_info
(player_id int NOT NULL PRIMARY KEY,
coach_id int,
team_id int, 
first_name varchar(20), 
last_name varchar(20), 
address varchar(20), 
state varchar(20), 
zip_code int, 
email varchar(20), 
phone_number varchar(20));
CREATE TABLE team_info
(team_id int NOT NULL PRIMARY KEY,
coach_id int,
sponsor_id int,
team_name varchar (20),
sport varchar(20));
CREATE TABLE sponsorship
(sponsor_id int NOT NULL PRIMARY KEY,
publicity int);
CREATE TABLE sponsor_info
(sponsor_id int NOT NULL PRIMARY KEY,
company_name varchar(20),
address varchar (20),
state varchar (20),
city varchar (20),
zip_code varchar(20),
contact_name varchar(20),
phone_number varchar(20),
email varchar (20));
CREATE TABLE coach_info
(coach_id int NOT NULL PRIMARY KEY,
first_name varchar (20),
last_name varchar(20),
address varchar (20),
state varchar (20),
city varchar (20),
zip_code varchar(20),
email varchar (20),
phone_number varchar (20));