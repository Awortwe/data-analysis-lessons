/*
Challenge
A customer needs the price of your products. Return the product names and unit prices with the cheapest product at the top and the 
most expensive product at the buttom of the list.
*/

Select ProductName 'Product Name', UnitPrice 'Unit Price' from products
Order By UnitPrice;

/* 
Challenge
Your new HR manager wants you to print out the names and salaries of employees with the higest paid employees on top and the lowest
paid employees at the bottom of the list 
*/

Select concat(FirstName, ' ', LastName) As 'Full Name', Salary from employees 
Order By Salary desc;

/* 
Challenge
Your new HR manager wants you to print out the names and salaries of employees with the higest paid employees on top and the lowest
paid employees at the bottom of the list. She only needs the FirstName, Last name and Salary of each employee. (Salary should be in 
this format $1,000.00). 
*/

Select FirstName, LastName, concat('$',format(Salary,2)) As 'Salary' 
From employees
Order By Salary DESC;

/*
Our company wants to know those that are due by age for retirement. Please return all Employees' details with the oldest first
and the youngest last on the list
*/

Select * from employees
Order by BirthDate asc;

/*
Challenge
Order by random
*/

Select * from employees
Order by rand()
limit 2;
