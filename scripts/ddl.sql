use master;
GO

create database EmployeeDB;
GO

use EmployeeDB;
GO

create schema Employee;
GO

CREATE TABLE Employee.Employee
(
    ID int not null IDENTITY(1, 1),
    Firstname NVARCHAR(50) not null,
    LastName NVARCHAR(50) not null,
    SSN NVARCHAR(11) not null,
    DeptID int null,
	PRIMARY KEY(ID);
	FOREIGN KEY (DeptID) REFERENCES Employee.Department(ID)
);

CREATE TABLE Employee.Department
(
    ID int not null IDENTITY(1, 1) PRIMARY KEY,
    Name NVARCHAR(100) not null,
    Location NVARCHAR(100) not null,
);

CREATE TABLE Employee.EmpDetails
(
    ID int not null IDENTITY(1, 1) PRIMARY KEY,
    EmployeeID int not null UNIQUE,
    Salary salary not null,
    Address1 NVARCHAR(255) not null,
    Address2 NVARCHAR(255) null,
    City NVARCHAR(100) not null,
    State NVARCHAR(50) not null,
    Country NVARCHAR(50) not null,
    FOREIGN KEY (EmployeeID) REFERENCES Employee.Employee(ID)
	
);
