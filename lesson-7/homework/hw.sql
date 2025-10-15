

select min(Price) as MinPrice from Products

select max(salary) as MaxSalary from Employees

select count(customerid) as TotalCustomers from Customers

select sum(SaleAmount) as TotalSales from Sales
where ProductID = 7
group by ProductID

select avg(age) as AvgAgeOfEmployees from Employees

select DepartmentName, count(EmployeeID) as NumberOfEmployees from Employees
group by DepartmentName

select Category, min(price) as MinPrice, max(price) as MaxPrice from Products	
group by Category

select CustomerID, sum(SaleAmount) as TotalSaleCustomers from Sales
group by CustomerID

select DepartmentName, count(EmployeeID) as EmployeeCount from Employees
group by DepartmentName
having count(EmployeeID) > 5

select p.Category, Avg(s.SaleAmount) as AvgSales, Sum(s.SaleAmount) as SumSales from sales s
join Products p on s.ProductID = p.ProductID
group by Category

select departmentname, count(EmployeeID) as TotalEmployees from Employees
where DepartmentName = 'HR'
group by DepartmentName

select DepartmentName, max(Salary) as HightestSalary, min(Salary) as LowestSalary from Employees
group by DepartmentName

select DepartmentName, avg(salary) AvgSalary from Employees
group by DepartmentName

select DepartmentName, avg(Salary) as AvgSalary, count(employeeid) TotalEmp from Employees
group by DepartmentName

select Category, avg(price) as AvgPrice from Products
group by Category
having avg(price) > 400

select year(SaleDate) as SaleYear, sum(SaleAmount) as TotalSale from Sales
group by year(SaleDate)

select CustomerID, count(OrderID) as TotalOrder from Orders
group by CustomerID
having count(OrderID) > 3

select DepartmentName, avg(salary) as AvgSalary from Employees
group by DepartmentName 
having avg(Salary) > 60000

select category, avg(price) from Products
group by Category
having avg(price) > 150

select CustomerID, sum(SaleAmount) as TotalSale from sales
group by CustomerID
having sum(SaleAmount) > 1500

select departmentname, sum(salary) as TotalSalary, avg(salary) as AvgSalary from Employees
group by DepartmentName
having avg(salary) > 65000
 
select CustomerID, sum(TotalAmount) as TotalOver50, min(TotalAmount) as LeastPurchase from Orders
where TotalAmount > 50
group by CustomerID;

select year(OrderDate) as OrderYear, 
			month(OrderDate) as OrderMonth, 
				sum(TotalAmount) as TotalSales, 
					count(distinct ProductID) as UniqueProducts	
						from Orders
group by year(OrderDate), month(OrderDate)
having count(distinct ProductID) >= 2
order by OrderYear, OrderMonth;

select year(OrderDate) as OrderYear,
       min(Quantity) as MinQuantity,
       max(Quantity) as MaxQuantity
from Orders
group by year(OrderDate)
order by OrderYear;
