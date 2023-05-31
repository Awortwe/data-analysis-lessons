/*
Show us the list of any ten(10) orders from orders table
*/

Select * from orders
limit 10;

/*
Challenge
Show us the list of ten(10) orders from orders table starting with most recent orders
*/

Select * from orders
Order by OrderDate desc
limit 10;

/*
Challenge
Find the highest salary from the Employees table. Also show the names of the employee that is receiving this salary
*/

Select FirstName, LastName, concat('$', format(Salary,2)) Salary from employees
Order by Salary desc
Limit 1;

Select * from employees;