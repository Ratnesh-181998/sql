-- DDl Examples

-- Create,drop, truncate

Create database mysql_demo;

show databases;

use mysql_demo;

-- How do I know which database I am in currently:
SELECT database();

drop database mysql_demo;

show databases;

create table student_table(
student_id INT,
student_name VARCHAR(100),
course_name VARCHAR(50)
);

show tables;

DROP TABLE student_table;

truncate table student_table;

describe student_table;

desc student_table;

-- Alter 

alter table student_table add email varchar(100);

alter table student_table drop column email;

alter table student_table rename column student_name to name;

alter table student_table modify column name varchar(50);

-- Constraints

-- Primary Key

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT
);
describe Employees;

-- Foreign Key 

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Employees(EmployeeID)
);
describe Orders;

-- Not Null

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100)
);
describe Customers;

-- Unique

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100) UNIQUE,
    Price DECIMAL(10, 2)
);
describe Products;

-- check table
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT,
    Grade CHAR(1) CHECK (Grade IN ('A', 'B', 'C', 'D', 'F'))
);
describe Students;

-- default

CREATE TABLE Orderss (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2) DEFAULT 0.00
);
describe Orderss;



