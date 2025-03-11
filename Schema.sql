-- Create Departments Table
CREATE TABLE Departments (
    DeptID NUMBER PRIMARY KEY,
    DeptName VARCHAR2(100) NOT NULL
);

-- Create Employees Table
CREATE TABLE Employees (
    EmpID NUMBER PRIMARY KEY,
    Name VARCHAR2(100) NOT NULL,
    Email VARCHAR2(100) UNIQUE NOT NULL,
    Salary NUMBER(10,2) NOT NULL,
    DeptID NUMBER,
    CONSTRAINT fk_department FOREIGN KEY (DeptID) REFERENCES Departments(DeptID)
);

-- Create Sequences for Auto-Increment
CREATE SEQUENCE dept_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE emp_seq START WITH 1 INCREMENT BY 1;

-- Create Triggers for Auto-Increment
CREATE OR REPLACE TRIGGER dept_trigger
BEFORE INSERT ON Departments
FOR EACH ROW
BEGIN
    SELECT dept_seq.NEXTVAL INTO :NEW.DeptID FROM dual;
END;
/

CREATE OR REPLACE TRIGGER emp_trigger
BEFORE INSERT ON Employees
FOR EACH ROW
BEGIN
    SELECT emp_seq.NEXTVAL INTO :NEW.EmpID FROM dual;
END;
/
