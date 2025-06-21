CREATE DATABASE Pizzahut;
USE  Pizzahut;
CREATE TABLE Orders(
   Order_id INT NOT NULL,
   Order_date date NOT NULL,
   Order_time time NOT NULL,
   PRIMARY KEY (Order_id) );
   
   CREATE TABLE Orders_details(
   order_detail_id int NOT NULL,
   Order_id INT NOT NULL,
   pizza_id text NOT NULL,
   quantity int NOT NULL,
   PRIMARY KEY (Order_detail_id) );
   
   