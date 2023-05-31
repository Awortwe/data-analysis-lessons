/*
CHALLENGE
The CompanyName field inb the customers table contains the customers' name. Get the list of customers with new title: CustomerName or CustomerName
*/

Select CompanyName As CustomerName from customers;

Select CompanyName CustomerName from customers;

Select CompanyName As 'Customer Name' from customers;

Select CompanyName 'Customer Name' from customers;

/*
Challenge
Calcualte the following and return the results with the corresponding headers:
20+50+30 --- Addition
20x100 --- Multiplication
10/2 --- Division
5 mod 2 --- Modulus
*/

Select 20+50+30 Addition;

Select 20*100 As Multiplication;

Select 10/2 Division;

Select 5%2 As Modulus;