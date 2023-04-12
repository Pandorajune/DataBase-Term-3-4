CREATE DATABASE carOwnerDB;
USE carOwnerDB;
CREATE TABLE person
(ss_number int NOT NULL PRIMARY KEY, 
first_name varchar(20), 
last_name varchar(20), 
street_address varchar(20), 
city varchar(20), 
state varchar(20), 
zip_code int, 
drivers_license int, 
birthdate date, 
phone_number varchar(20), 
email varchar(20));
CREATE TABLE car 
(vehicle_id int NOT NULL PRIMARY KEY,
ss_number int,
make varchar(20),
model varchar(20), 
car_year year,
vin_number int,
license_plate varchar(20),
milage int,
color varchar(20));
