--SELECT FirstName,LastName,Age,
--CASE
--	WHEN Age>34 THEN 'Old'
--	WHEN Age BETWEEN 31 AND 33 THEN 'Young'
--	ELSE 'Adolescent'
--END
--FROM SqlTutorials.dbo.EmployeeDemoGraphics
--WHERE Age IS NOT NULL
--ORDER BY Age

SELECT FirstName, LastName, JobTitle, Salary,
CASE
	WHEN JobTitle = 'Salesman' THEN Salary + (Salary * .10)
	WHEN JobTitle = 'Accountant' THEN Salary + (Salary * .05)
	WHEN JobTitle = 'HR' THEN Salary + (Salary * .01)
	ELSE Salary + (Salary * .03)
END AS AfterSalaryRaise
FROM SqlTutorials.dbo.EmployeeDemoGraphics 
INNER JOIN SqlTutorials.dbo.EmployeeSalary
ON EmployeeDemoGraphics.EmployeeID = EmployeeSalary.EmployeeID
