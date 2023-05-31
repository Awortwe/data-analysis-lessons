use company2;

CREATE table customer1(
CustomerID int,
CustomerName varchar(50),
CustomerAddress varchar(200),
primary key(CustomerID)
);

insert into customer1(CustomerID, CustomerName, CustomerAddress) value(12, "Babba", "New York Street");

insert into customer1 value(13, "Daniel", "New Jersey");

insert into customer1(CustomerID, CustomerName, CustomerAddress) values
(14, "Grace", "14 Street"),
(15, "Anthony", "15 Street"),
(16, "Paul", "Tim Street");


insert into customer1 values
(17, "Ben", "17 Street"),
(18, "Suen", "18 Street"),
(19, "Kate", "19 Street");

select * from customer1;