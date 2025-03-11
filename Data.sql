USE EmployeeDB;

-- Insert Departments
INSERT INTO Departments (DeptName) VALUES
('HR'),
('IT'),
('Finance');

-- Insert Employees
INSERT INTO Employees (Name, Email, Salary, DeptID) VALUES
('John Doe', 'john@example.com', 60000, 1),
('Alice Smith', 'alice@example.com', 75000, 2),
('Bob Johnson', 'bob@example.com', 50000, 3);
