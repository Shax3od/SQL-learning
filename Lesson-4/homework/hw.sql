select top 5 FirstName, LastName from Employees

select distinct ProductName from Products_Discounted

select ProductName, Price from Products_Discounted
where Price >100

select FirstName from Customers
where FirstName like 'A%'

select ProductName, Price from Products_Discounted
order by Price

select	FirstName, LastName, salary from Employees
where salary > 6000 and DepartmentName = 'HR'

select isnull( Email, 'noemail@example.com') as Email from Employees

select ProductName, Price from Products_Discounted
where Price between 50 and 100

select distinct Category, ProductName from Products_Discounted
order by ProductName desc

select top 10 ProductName, Price from Products_Discounted
order by Price desc

Select Coalesce(FirstName, LastName) as FirstName FROM Employees

Select distinct Category, Price  from Products_Discounted

Select FirstName, LastName, Age, DepartmentName from Employees
where age between 30 and 40 or DepartmentName = 'Marketing'

Select * from Employees
order by Salary desc
offset 11 rows
fetch next 9 rows only

select * from Products_Discounted
where Price <=1000 and StockQuantity > 50

select ProductName from Products_Discounted
where ProductName like '%e%'

select * from Employees
where DepartmentName in('HR', 'IT', 'Finance')

select * from Customers
order by City asc ,  PostalCode desc

select top 5 ProductID, SaleAmount from Sales
order by SaleAmount desc

select FirstName + ' ' + LastName as FullName from Employees

select distinct Category, ProductName, Price from Products_Discounted
where Price > 50

select * from Products_Discounted
where price > 0.1 * (select avg(price) from Products_Discounted)

select * from Employees
where age < 30 and DepartmentName in('HR', 'IT')

select * from Customers
where Email like '%@gmail.com'

select * from Employees
where salary > all(select salary from Employees where DepartmentName = 'Sales')

select * from Orders
where OrderDate between dateadd(day, -180, getdate()) and getdate()
