-- Get all employees
SELECT * FROM Employees;

-- Get employees in a specific department (e.g., IT)
SELECT Name, Email, Salary
FROM Employees
JOIN Departments ON Employees.DeptID = Departments.DeptID
WHERE Departments.DeptName = 'IT';

-- Get total salary per department
SELECT Departments.DeptName, SUM(Employees.Salary) AS TotalSalary
FROM Employees
JOIN Departments ON Employees.DeptID = Departments.DeptID
GROUP BY Departments.DeptName;

-- Get the highest-paid employee
SELECT Name, Salary FROM Employees WHERE Salary = (SELECT MAX(Salary) FROM Employees);
