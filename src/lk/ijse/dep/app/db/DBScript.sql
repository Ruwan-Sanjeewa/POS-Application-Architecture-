CREATE DATABASE JDBC;
CREATE TABLE Customer(id VARCHAR(10),
name VARCHAR(10),
address VARCHAR(10),
CONSTRAINT PRIMARY KEY (id));

CREATE TABLE Item(code VARCHAR(10),
description VARCHAR(10),
unitPrice DECIMAL,
qtyOnHand INT,
CONSTRAINT PRIMARY KEY (code));


CREATE TABLE `Order`(id VARCHAR(10) primary key ,
  date DATE,
  customerId VARCHAR(10),

CONSTRAINT FOREIGN KEY (customerId) REFERENCES Customer(id));

CREATE TABLE OrderDetail(orderId VARCHAR(10),
itemCode VARCHAR(10),
qty INT,
unitPrice DECIMAL,
CONSTRAINT PRIMARY KEY (orderId,itemCode),
CONSTRAINT FOREIGN KEY (orderId) REFERENCES `Order`(id),
CONSTRAINT FOREIGN KEY (itemCode) REFERENCES Item(code));