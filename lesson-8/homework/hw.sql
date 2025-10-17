Use Lesson_8_hw

select Category, count(ProductID) as TotalNumberProducts from Products
group by Category

select Category, avg(price) as AvgPrice from Products
where Category = 'Electronics'
group by Category

select * from Customers
where City like 'L%'

select * from Products
where ProductName like '%er'

select * from Customers
where Country like '%a'

select max(price) as HighestPrice from Products

select *,
case		
		when StockQuantity < 30 then 'Low Stock'
		else 'Sufficient'
		end as ProductStock
from Products
order by ProductStock

select Country, sum(customerid) as TotalCostomers from Customers
group by Country

select max(Quantity) as MaxQuantity, min(Quantity) as MinQuantity from Orders

select distinct o.CustomerID from Orders o
left join Invoices i
    on o.CustomerID = i.CustomerID
    and i.InvoiceDate between '2023-01-01' and '2023-01-31'
where o.OrderDate between '2023-01-01' and '2023-01-31'
  and i.InvoiceID is null

select ProductName from Products
union all
select ProductName from Products_Discounted

select ProductName from Products
union
select ProductName from Products_Discounted

select year(orderdate) as OrderYear, avg(totalamount) as AvgOrdersAmount from Orders
group by year(orderdate)

select ProductName,
	case	
		when price > 500 then 'High'
		when price < 100 then 'Low'
		else 'Mid'
	end as PriceGroup
from Products
order by PriceGroup

select District_name, [2012], [2013] from city_population
pivot (
sum(population) for Year in ([2012], [2013])) as PivotTable

select ProductID, sum(SaleAmount) as TotalSale from Sales
group by ProductID

select Productname from Products
where ProductName like '%oo%'

SELECT Year,
       [Bektemir],
       [Chilonzor],
       [Yakkasaroy]
INTO Population_Each_City
FROM
(
    SELECT Year, District_Name, Population
    FROM City_Population
    WHERE District_Name IN ('Bektemir','Chilonzor','Yakkasaroy')
) AS src
PIVOT
(
    SUM(Population) FOR District_Name IN ([Bektemir],[Chilonzor],[Yakkasaroy])
) AS pvt;

select top 3 CustomerID, sum(TotalAmount) as Totalspent from Invoices
group by CustomerID
order by Totalspent desc

SELECT District_Name, '2012' AS Year, [2012] AS Population FROM Population_Each_Year
UNION ALL
SELECT District_Name, '2013', [2013] FROM Population_Each_Year;

SELECT p.ProductName,
       COUNT(s.SaleID) AS TimesSold
FROM Products p
LEFT JOIN Sales s
    ON p.ProductID = s.ProductID
GROUP BY p.ProductName;

SELECT 'Bektemir' AS District_Name, Year, [Bektemir] AS Population FROM Population_Each_City
UNION ALL
SELECT 'Chilonzor', Year, [Chilonzor] FROM Population_Each_City
UNION ALL
SELECT 'Yakkasaroy', Year, [Yakkasaroy] FROM Population_Each_City;
