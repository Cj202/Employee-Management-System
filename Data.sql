-- Insert Sample Departments
INSERT INTO Departments (DeptName) VALUES ('HR');
INSERT INTO Departments (DeptName) VALUES ('IT');
INSERT INTO Departments (DeptName) VALUES ('Finance');

-- Insert Sample Employees
INSERT INTO Employees (Name, Email, Salary, DeptID) 
VALUES ('John Doe', 'john@example.com', 60000, 1);

INSERT INTO Employees (Name, Email, Salary, DeptID) 
VALUES ('Alice Smith', 'alice@example.com', 75000, 2);

INSERT INTO Employees (Name, Email, Salary, DeptID) 
VALUES ('Bob Johnson', 'bob@example.com', 50000, 3);
