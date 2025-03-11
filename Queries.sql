USE EmployeeDB;

-- Get all employees
SELECT * FROM Employees;

-- Find employees in the IT Department
SELECT Name, Email, Salary
FROM Employees
JOIN Departments ON Employees.DeptID = Departments.DeptID
WHERE Departments.DeptName = 'IT';

-- Get total salary per department
SELECT Departments.DeptName, SUM(Employees.Salary) AS TotalSalary
FROM Employees
JOIN Departments ON Employees.DeptID = Departments.DeptID
GROUP BY Departments.DeptName;
