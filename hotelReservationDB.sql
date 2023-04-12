CREATE DATABASE hotel_reservation;
USE hotel_reservation;
CREATE TABLE customer_info 
(customer_id int NOT NULL PRIMARY KEY,
 first_name varchar(20), 
 last_name varchar(20), 
 address varchar(20), 
 city varchar (20), 
 state varchar(20), 
 zip_code varchar(20), 
 email varchar(20), 
 phone_number varchar(20));
 CREATE TABLE payment_type
 (card_number int NOT NULL PRIMARY KEY, 
 credit_card_type varchar(20), 
 cvv_number int, 
 expiration_date date);
 CREATE TABLE hotel_room_info 
 (room_number int NOT NULL PRIMARY KEY,
 room_rate int,
 number_of_beds int,
 type_of_bed varchar(20),
 refrigerator varchar(20));