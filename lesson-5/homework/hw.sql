select ProductName as [Name] from Products

select * from Customers as Client

select ProductName from Products 
union
select ProductName from Products_Discounted

select ProductName from Products 
intersect
select ProductName from Products_Discounted

select distinct FirstName, LastName, City from Customers

select ProductName, Price, 
	case
		when Price > 1000 then 'High'
		else 'Low'
		end as PriceCategory
from Products
order by PriceCategory 

select ProductName, StockQuantity, iif(StockQuantity > 100, 'YES', 'NO') as ProductType from Products_Discounted 

select ProductName from Products
union
select ProductName from Products_Discounted

select ProductName from Products
except
select ProductName from Products_Discounted

select ProductName, Price, IIF(Price > 1000, 'Expensive', 'Affordable') as ProductsType from Products

select FirstName, LastName, Age, Salary from Employees
where age < 25 or Salary > 60000

update Employees 
set Salary = Salary * 1.10
where DepartmentName = 'HR' or EmployeeID = 5

select *,
	case
		when SaleAmount > 500 then 'Top Tier'
		when SaleAmount > 200 then 'Mid Tier'
		else 'Low Tier'
		end as Tier
from Sales

select CustomerID from Customers
except
select CustomerID from Sales

select CustomerID, Quantity,
	case 
		when Quantity = 1 then '3%'
		when Quantity between 1 and 3 then '5%'
		else '7%'
		end as DiscountPercentage
from Orders
