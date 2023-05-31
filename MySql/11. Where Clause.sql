/*
Challenge
Your sales manager had asked you to send him the list of all customers. Having done that, he asked you to go back and separate the UK 
customers from the list. The result should come with a separate column describing each row with: "This is a UK customer" 
*/

Select 'This is a UK customer', CompanyName, ContactName, Address from customers
Where Country = 'UK';

/*
Challenge
Which of the customers has greal as ID
*/

Select * from customers
Where CustomerID = 'GREAL';

/*
Challenge
The EmployeeID 6 belongs to which employee?
*/

Select * from employees
Where EmployeeID = 6;

/*
Challenge
What is the name of the product whose unit price is 21.35?
*/

Select ProductName, UnitPrice from products
Where UnitPrice = 21.35;

/*
Challenge
The MD/CEO wants to have a meeting with all the company Sales Representatives. Help get their full details.
*/

Select * from employees
Where Title = 'Sales Representative'; 

/*
Challenge
You need to call all the customers except those from Spain. Get the names and phone numbers
*/

Select CompanyName, Phone, Country from customers
Where Country != 'Spain';

-- OR

Select CompanyName, Phone, Country from customers
Where Country <> 'Spain';

/*
Challenge
What are the products supplied by a supplier with ID number 12?
*/

Select * from products
Where SupplierID = 12;

/*
Challenge
Due to the current ongoing investigation on the Supplier with the ID number 28, kindly give us the list of the rest of the suppliers
for urgent notification.
*/

Select * from suppliers
Where SupplierID <> 28;

-- OR

Select * from suppliers 
Where not SupplierID = 28;

/*
Challenge
Find all products with unit price greater than 20.
*/

Select * from products
Where UnitPrice > 20
Order By UnitPrice;

/*
Challenge
Return the details of products with price less than 50.00
*/

Select * from products
Where UnitPrice < 50
order by UnitPrice desc;

/*
Challenge
As we need to restock our warehouse find the products that have UnitInStock less than 10.
Give only the product names and the available stock
*/

Select ProductName 'Product Name', UnitsInStock 'Available Stock' from products
Where UnitsInStock < 10
Order by UnitsInStock desc;

/*
Challenge
Our company is trying to meet the standard minimum wages and wish not to pay any employee less than 2000.00
Kindly return the details of employees who earn below 2000.00
*/

Select * from employees
Where Salary < 2000
Order by Salary DESC;

/*
Challenge
Our company is planning to send gifts to customers who have spent 10,000 and above at once patronising us. Help get the OrderIds 
and LineTotal which is UnitPrice multiplied by Quantity as Amount Spent
*/

Select OrderID, format((UnitPrice*Quantity), 2) 'Line Total' from orderdetails
Where (UnitPrice*Quantity) >= 10000
Order By (UnitPrice*Quantity);

/*
Challenge
In the product table, unitsinstock field contains the current inventory of products. If the unitsinstockvalue for each product is less than
reorder-level value your company asks the supplier invloved to supply that products. Help get the list of products that needs to be supplied.
*/

Select ProductName, UnitsInStock, ReorderLevel from products
Where UnitsInStock < ReorderLevel
Order by UnitsInStock;

/*
Challenge
Some of our customers from San Francisco have been affected by flood. We want a list of our customers in San Francisco, USA 
for urgent assistance
*/

Select * from customers
Where Country = 'USA' AND City = 'San Francisco';

/*
Challenge
Your manager wants to have the details of customers in Mexico with contact title "Owner".
Write a query to return their details
*/

Select * from customers
Where Country = 'Mexico' AND ContactTitle = 'Owner';

/*
Challenge
Send the list of customers who are neither in UK or US to your manager.
*/

Select * from customers
Where Country <> 'USA' AND Country != 'UK';

/*
Challenge
The government has announced a new sanction on Argentina and Venezuela. We are asked not to sell our products to them.
Kindly show the details of of these customersfor urgent notification
*/

Select * from customers
Where Country = 'Argentina' OR Country = 'Venezuela';

/*
Challenge
Help get the details of suppliers whose supplierids are between 20 and 25
*/

Select * from Suppliers
Where SupplierID >= 20 AND SupplierID <= 25;

-- OR

Select * from suppliers
Where SupplierID between 20 and 25;

/*
Challenge
Help get the details of suppliers whose supplierids are above 22 or below 10
*/

Select * from suppliers
Where SupplierID > 22 OR SupplierID < 10;

/*
Challenge
Help get the details of suppliers whose supplierids are from 6 to 9 and 18 to 24
*/

Select * from suppliers
Where SupplierID between 6 and 9 OR SupplierID between 18 and 24;

/*
Challenge
Help get the details of suppliers whose supplierids are not from 12 to 20
*/

Select * from suppliers
Where SupplierID not between 12 and 20;


/*
Challenge
We have customers in nine cities in France. Our sales manager will only be able to visit customers in two France's cities: Paris and Nantes.
Help get their details
*/
 
 Select * from customers
 Where Country = 'France' and (City = 'Paris' or City = 'Nantes');