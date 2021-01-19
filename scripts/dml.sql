insert into Employee.Department
    ([Name], [Location])
VALUES
    ('Sales', 'Park');

insert into Employee.Department
    ([Name], [Location])
VALUES
    ('Marketing', 'River');

insert into Employee.Department
    ([Name], [Location])
VALUES
    ('Accounting', 'Mountain');


insert into Employee.Employee
    (Firstname, LastName, ssn, DeptID)
VALUES
    ('Tina', 'Smith', '000-00-0001', 1);

insert into Employee.Employee
    (Firstname, LastName, ssn, DeptID)
VALUES
    ('Ada', 'Li', '000-00-0002', 2);

insert into Employee.Employee
    (Firstname, LastName, ssn, DeptID)
VALUES
    ('James', 'Smithson', '000-00-0003', 3);


insert into Employee.EmpDetails
    (EmployeeID, Salary, Address1, City, State, Country)
VALUES
    (1, 2000, '246 Park', 'LA', 'CA', 'USA');

insert into Employee.EmpDetails
    (EmployeeID, Salary, Address1, City, State, Country)
VALUES
    (2, 2500, '5678 River Side', 'LA', 'CA', 'USA');

insert into Employee.EmpDetails
    (EmployeeID, Salary, Address1, City, State, Country)
VALUES
    (3, 3000, '900 Sweet CIR', 'LA', 'CA', 'USA');


SELECT *
FROM Employee.Employee AS Empl
INNER JOIN Employee.Department AS Dept
ON Empl.DeptID = Dept.ID
WHERE Dept.Name = 'Marketing';


SELECT SUM(salary)
FROM Employee.EmpDetails AS details
INNER JOIN Employee.Employee AS empl
ON details.EmployeeID = empl.ID
INNER JOIN Employee.Department AS Dept
ON empl.DeptID = Dept.ID
WHERE Dept.Name = 'Marketing';

select COUNT(*)
FROM Employee.Employee
GROUP BY DeptID;


UPDATE Employee.EmpDetails
SET Salary = 9000
FROM Employee.EmpDetails AS Details
INNER JOIN Employee.Employee AS Empl
ON Details.EmployeeID = Empl.ID
WHERE Empl.Firstname = 'Tina'AND Empl.LastName = 'Smith';
 