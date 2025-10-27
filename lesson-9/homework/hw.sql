select P.ProductName, S.SupplierName from Products P
cross join Suppliers S


select D.DepartmentName, E.Name from Departments D
cross join Employees E

select P.ProductName, S.SupplierName from Products P
join Suppliers S
on P.SupplierID = S.SupplierID

select C.FirstName + ' ' + C.LastName as FullName, O.OrderID from Orders O
join Customers C 
on C.CustomerID = O.CustomerID

select S.Name, C.CourseName from Courses C
cross join Students S

select P.ProductName, O.OrderID from Products P
join Orders O
on P.ProductID = O.ProductID

select E.Name, D.DepartmentName from Departments D
join Employees E
on D.DepartmentID = E.DepartmentID

select S.Name, E.CourseID from Students S
join Enrollments E
on S.StudentID = E.StudentID

select O.OrderID, P.Amount from Orders O
join Payments P 
on O.OrderID = P.OrderID

Select O.OrderID, P.Price from Orders O
join Products P
on O.ProductID = P.ProductID
where P.Price > 100

select E.Name, D.DepartmentName from Departments D
Cross join Employees E
where D.DepartmentID <> E.DepartmentID

select O.OrderID from Orders O
join Products P
on O.Quantity > P.StockQuantity

select C.FirstName + C.LastName as FullName, ProductID, S.SaleAmount from Customers C
join Sales S
on C.CustomerID = S.CustomerID
where SaleAmount > 500

select P.ProductName, S.SupplierName from Products P
join Suppliers S
on P.SupplierID = S.SupplierID
where S.SupplierName like 'TECH%'

select * from Orders O
join Payments P
On O.OrderID = P.OrderID
where p.Amount > O.TotalAmount

select E.Name, D.Departmentname from Employees E
cross join Departments D
 
select * from Products P
join Categories C
on P.ProductID = C.CategoryID 
where C.CategoryName like 'Electronics' or C.CategoryName like 'Furniture'

select * from Sales S
join Customers C
on C.CustomerID = S.CustomerID
where C.Country = 'USA'

select * from Orders O
join Customers C
on O.CustomerID = C.CustomerID
where C.Country = 'Germany' and O.TotalAmount > 100

select E1.Name as Employee1, E2.Name as employee1 from Employees E1
cross join Employees E2 
where E1.DepartmentID > E2.DepartmentID and E1.DepartmentID <> E2.DepartmentID 

select p.PaymentID, p.OrderID, p.Amount as PaidAmout, (o.Quantity * p1.Price) ExpecteAmount from Payments P
join Orders O on p.PaymentID = o.OrderID
join Products p1 on o.ProductID = p1.ProductID
where p.amount <> (o.quantity * p1.price);

select S.Name, count(C.CourseID) as TotalCourses from Students S
join Enrollments E on S.StudentID = E.StudentID
join Courses C on E.CourseID = C.CourseID
group by S.Name
having count(C.CourseID) = 0

select M.Name as ManagerName, M.Salary as ManagerSalary from Employees E
join Employees M
on E.EmployeeID = M.ManagerID
where m.salary <= e.salary

select C.FirstName + c.LastName as FullName, o.TotalAmount , p.Amount from Orders O
join Payments P on O.OrderID = P.PaymentID
join Customers C on C.CustomerID = O.CustomerID
where P.PaymentID is Null
