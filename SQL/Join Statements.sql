--SELECT * 
--FROM SqlTutorials.dbo.EmployeeDemoGraphics
--Inner Join SqlTutorials.dbo.EmployeeSalary
--ON EmployeeDemoGraphics.EmployeeID = EmployeeSalary.EmployeeID

--SELECT * 
--FROM SqlTutorials.dbo.EmployeeDemoGraphics 
--Full Outer Join SqlTutorials.dbo.EmployeeSalary
--ON EmployeeDemoGraphics.EmployeeID = EmployeeSalary.EmployeeID

--SELECT *
--FROM SqlTutorials.dbo.EmployeeDemoGraphics 
--Left Outer Join SqlTutorials.dbo.EmployeeSalary
--ON EmployeeDemoGraphics.EmployeeID = EmployeeSalary.EmployeeID

--SELECT * 
--FROM SqlTutorials.dbo.EmployeeDemoGraphics 
--Right Outer Join SqlTutorials.dbo.EmployeeSalary
--ON EmployeeDemoGraphics.EmployeeID = EmployeeSalary.EmployeeID

--SELECT EmployeeDemoGraphics.EmployeeID, FirstName, LastName, JobTitle, Salary
--FROM SqlTutorials.dbo.EmployeeDemoGraphics 
--Inner Join SqlTutorials.dbo.EmployeeSalary
--ON EmployeeDemoGraphics.EmployeeID = EmployeeSalary.EmployeeID

-- USE CASE
-- APART FROM MICHAEL SCOTT WE WANT TO KNOW THE EMPLOYEE WITH THE HIGHEST SALARY

--SELECT EmployeeDemoGraphics.EmployeeID, FirstName, LastName, Salary
--FROM SqlTutorials.dbo.EmployeeDemoGraphics
--Inner Join SqlTutorials.dbo.EmployeeSalary
--ON EmployeeDemoGraphics.EmployeeID = EmployeeSalary.EmployeeID
--WHERE FirstName <> 'Michael'
--ORDER BY Salary DESC

-- USE CASE
-- WE WANT TO CALCULATE THE AVERAGE SALARY OF OUR SALESMEN

--SELECT JobTitle, AVG(Salary) AS AverageSalary
--FROM SqlTutorials.dbo.EmployeeSalary
--WHERE JobTitle = 'Salesman'
--GROUP BY JobTitle

--SELECT JobTitle, AVG(Salary) AS AverageSalary
--FROM SqlTutorials.dbo.EmployeeSalary
--GROUP BY JobTitle
