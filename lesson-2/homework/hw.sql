create database Homework_2

use Homework_2

create table Employees (EmpID int, Name varchar(50),  Salary decimal(10,2))

insert into Employees values 
     ( 1 , 'Nik' , 568.42),
     ( 2 , 'Duke' , 764.38),
     ( 3 , 'Cavil' , 697.74)

select * from Employees

update Employees
set Salary = 7000
where EmpID = 1

delete from Employees
where EmpID = 2

alter table Employees
alter column Name varchar(100)

alter table Employees
add Department varchar(50)

alter table Employees
alter column salary float

create table Departments (DepID INT Primary Key , DepName Varchar(50))

truncate table Employees

insert into Departments values
    ( 1 , 'Accounting' ),
    ( 2 , 'Sales' ),
    ( 3 , 'Marketing' ),
    ( 4 , 'Analytics' ),
    ( 5 , 'Main' )

select * from Departments

alter table Departments
add Salary Decimal(10,2)

update Departments
set Salary = 32494
where DepID = 1
update departments
set Salary = 4563
where DepID = 2
update departments
set Salary = 334
where DepID = 3
update departments
set Salary = 1000
where DepID = 4
update departments
set Salary = 9980
where DepID = 5

update departments
set DepName = 'Management'
where salary > 5000

truncate table Employees

alter table Employees
drop column Department

exec sp_rename 'Employees' , 'StaffMembers'
select * from StaffMembers

drop table Departments

create table Products ( ProID INT Primary Key, ProName varchar(50), Category varchar, Price Decimal(10,2) Check (Price > 0)) 

alter table Products
add StockQuantity INT Default(50)
select * from Products

exec sp_rename 'Products.Category', 'ProCategory', 'COLUMN'

insert into Products values
    (1 , 'Porsche' , 'B' , 150.5 , 50),
    (2 , 'Ferrari' , 'A' , 250.15 , 15),
    (3 , 'BMW' , 'C' , 100.25 , 80),
    (4 , 'McLaren' , 'A' , 250.75 , 17),
    (5 , 'Mercedes' , 'C' , 100.85 , 75)

truncate table Products

select * into Products_backup
from Products

exec sp_rename 'Products' , 'Inventory'

alter table Inventory
alter column Price float
go
select * from Inventory
 
alter table Inventory
add ProductCode int identity(1000 , 5);
select * from Inventory


