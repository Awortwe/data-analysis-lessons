/*
CHALLENGE
HOW WOULD YOU DEFINE A PRIMARY KEY?
*/
create table user1(
userid int primary key not null,
username varchar(50),
password varchar(20)
);

create table user2(
userid int not null,
username varchar(50),
password varchar(20),
primary key(userid)
);

create table user3(
userid int not null,
username varchar(50),
password varchar(20),
primary key(userid, username)
);

describe user3;

/*
CHALLENGE
HOW DO YOU DELETE A PRIMARY KEY?
*/
ALTER TABLE user1 DROP PRIMARY KEY;
DESCRIBE user1;

/*
CHALLENGE 
HOW DO YOU ADD A PRIMARY KEY TO AN EXITING TABLE?
*/

CREATE TABLE person(
personID INT NOT NULL,
personName VARCHAR(50),
personAddress VARCHAR(50)
);
ALTER TABLE person ADD PRIMARY KEY(personID);

DESCRIBE person;


/*
CHALLENGE
HOW WOULD YOU ASSIGN A FOREIGN KEY TO A CREATE TABLE?
*/
CREATE TABLE customers(
customerID INT NOT NULL,
customerName VARCHAR(50),
customerAddress VARCHAR(30),
PRIMARY KEY(customerID)
);
INSERT INTO customers VALUE
(10, "Peter", "10th Street"),
(11, "John", "11th Street");

SELECT * FROM customers;

CREATE TABLE orders(
orderID INT NOT NULL,
orderNumber INT NOT NULL,
customerID INT,
PRIMARY KEY(orderID),
FOREIGN KEY(customerID) REFERENCES customers(customerID)
);

INSERT INTO orders value
(200, 1690, 10),
(201, 4590, 11);

SELECT * FROM orders;

use company2;

/*
CHALLENGE 
HOW DO YOU ADD A FOREIGN KEY TO AN EXISTING TABLE
*/
CREATE TABLE customer2(
customerID INT NOT NULL,
customerName VARCHAR(50),
customerAddress VARCHAR(30),
PRIMARY KEY(customerID)
);

CREATE TABLE order2(
orderID INT NOT NULL,
orderNumber INT NOT NULL,
customerID INT,
PRIMARY KEY(orderID)
);
ALTER TABLE order2 ADD FOREIGN KEY(customerID) REFERENCES customer2(customerID);
DESCRIBE customer2;
DESCRIBE order2;

/*
CHALLENGE
HOW DO YOU DELETE A COLUMN IN A TABLE?
*/

ALTER TABLE customer2 DROP COLUMN customerName;

/*
CHALLENGE
HOW WOULD YOU DELETE A REFERENCED COLUMN IN A TABLE? 
*/

CREATE TABLE customerPP(
customerID INT NOT NULL,
customerName VARCHAR(50),
customerAddress VARCHAR(30),
PRIMARY KEY(customerID)
);

CREATE TABLE orderPP(
orderID INT NOT NULL,
orderNumber INT NOT NULL,
customerID INT,
PRIMARY KEY(orderID),
CONSTRAINT FK_customers FOREIGN KEY(customerID) REFERENCES customerPP(customerID)
);

ALTER TABLE orderPP DROP FOREIGN KEY FK_customers;

ALTER TABLE orderPP DROP COLUMN customerID;