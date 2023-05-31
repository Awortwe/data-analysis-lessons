/* 
Challenge 
Write a query to join 'Hello' and 'World' to become Hello World
*/
Select concat('Hello ', 'World');

/* 
Challenge 
Write a query to combine 'I', 'love', 'SQL', 'Query' to become 'I love SQL Query'
*/

Select concat('I ', 'love ', 'SQL ', 'query');

/*
Challenge
Write a query to generate Full Name by combining FirstName and LastName fields from Employees table.
*/

Select concat(FirstName, ' ', LastName) As 'Full Name' from employees;

Select concat(FirstName, ' ', LastName) 'Full Name' from employees;