--use Northwind

--1. SELECT STATEMENTS

--SELECT *
--FROM Customers

--SELECT CompanyName, City
--FROM Customers

--SELECT Country
--FROM Customers

--2. SELECT DISTINCT

--SELECT DISTINCT Country
--FROM Customers

--SELECT COUNT(DISTINCT Country)
--FROM Customers

-- 3. WHERE STATEMENTS

--SELECT *
--FROM Customers
--WHERE Country = 'Mexico'

--SELECT * 
--FROM Customers
--WHERE City = 'Berlin'

-- 4. AND, OR, NOT OPERATORS
-- "Customers" where country is "Germany" AND city is "Berlin"

--SELECT *
--FROM Customers
--WHERE Country = 'Germany' AND City = 'Berlin'

-- "Customers" where city is "Berlin" OR "München"

--SELECT * 
--FROM Customers
--WHERE City = 'Berlin' OR City = 'München'

-- "Customers" where country is "Germany" OR "Spain"

--SELECT * 
--FROM Customers 
--WHERE Country = 'Spain' OR Country = 'Germany'

-- "Customers" where country is NOT "Germany"

--SELECT *
--FROM Customers
--WHERE NOT Country = 'Germany'

-- "Customers" where country is "Germany" AND city must be "Berlin" OR "München"

--SELECT *
--FROM Customers
--WHERE Country = 'Germany' AND (City = 'Berlin' OR City = 'München')

-- "Customers" where country is NOT "Germany" and NOT "USA"
--SELECT *
--FROM Customers 
--WHERE NOT Country = 'Germany' AND NOT Country = 'USA'

-- Select all records where the City column has the value 'Berlin' and the PostalCode column has the value 12209.

--SELECT *
--FROM Customers
--WHERE City = 'Berlin' AND PostalCode = 12209 

-- 5. ORDER BY STATEMENT

-- "Customers" table, sorted by the "Country" column

--SELECT * 
--FROM Customers
--ORDER BY Country

-- Select all customers from the "Customers" table, sorted DESCENDING by the "Country" column

--SELECT *
--FROM Customers
--ORDER BY Country DESC

--  Select all customers from the "Customers" table, sorted by the "Country" and the "CustomerName" column. 

--SELECT *
--FROM Customers
--ORDER BY Country, CompanyName

--  Select all customers from the "Customers" table, sorted ascending by the "Country" and descending by the "CustomerName" column

--SELECT * 
--FROM Customers
--ORDER BY Country ASC, CompanyName DESC

--  Select all records from the Customers table, sort the result alphabetically by the column City.

--SELECT *
--FROM Customers
--ORDER BY City


-- 6. INSERT INTO STATEMENTS

--SELECT * FROM Customers

--INSERT INTO Customers(CustomerID,CompanyName,ContactName,ContactTitle,Address,City,PostalCode,Country)
--VALUES(92,'Cardinal', 'Tom B.Erichsen', 'Manager' ,'Skagen 21', 'Stavanger', '4006', 'Norway')

-- 7. NULL STATEMENTS

-- lists all customers with a NULL value in the "Address" field

--SELECT CompanyName, Country, Address
--FROM Customers
--WHERE Region IS NULL

--  lists all customers with a value in the "Address" field

--SELECT CompanyName, Address, ContactName
--FROM Customers
--WHERE Address IS NOT NULL

-- Select all records from the Customers where the PostalCode column is empty

--SELECT *
--FROM CUSTOMERS
--WHERE PostalCode IS NULL

-- 8. UPDATE STATEMENTS

--UPDATE Customers
--SET CompanyName = 'Cardinal Piont'
--WHERE CustomerID = '92'

--UPDATE Customers
--SET ContactName = 'Juan'
--WHERE Country = 'Mexico'

-- 9. DELETE STATEMENT

--DELETE FROM Customers 
--WHERE CustomerID = '92'

-- Delete all the records from the Customers table where the Country value is 'Norway'.

--DELETE FROM CUSTOMERS
--WHERE Country = 'Norway'


-- SELECT TOP STATEMENTS

--SELECT TOP 3 * 
--FROM Customers 
