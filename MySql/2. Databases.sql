/*
Challenge
You are new to SQL. Your supervisor you to create a new database with a name: Shop 
*/
Create database Shop;

Create database if not exists Estate;

/*
Challenge
How do we check for existing databases?
*/
Show databases;

/*
Challenge
Among the existing databases, you supervisor asked you to delete the estate database
*/
Drop database estate;

Show databases;

/*
Challenge
You are ready to start working with your first project and you are required to work with the Shop database. How would you select it?
*/
Use Shop;

/* 
Challenge 
How to check for the current database in use?
*/
Select database();

use northwind;