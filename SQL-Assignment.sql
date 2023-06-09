﻿--Welcome to SQL Practice Problem
--Create Database.
create database PracticeProblem
--use database
use PracticeProblem
--Create Customer table with columns Customer Id, Customer Name,Phone, Address.
Create Table Customer(
CustomerID int identity(1,1)Primary key,
CustomerName varchar(100),
Address varchar (200),
PhoneNumber varchar (20)
);
--Add few customer details into customer table.
insert into Customer (CustomerName,Address,PhoneNumber)
values ('Rutuja','Satara','9011973870'),
('Raj','Pune','9850897654'),
('Dev','Mumbai','9850897654'),
('Riya','Nagpur','985086767'),
('Sam','Nashik','8850897654');
select * from Customer
--Add new columns like Country, Salary and Pincode and update values.
alter table Customer
Add  Country varchar (100),
Salary  varchar (100),
Pincode varchar (100);
--Update customer details based on customer name.
update Customer set Country='India',Salary='3000',Pincode='415540' Where CustomerName = 'Rutuja'
update Customer set Country='USA',Salary='30000',Pincode='415541' Where CustomerName = 'Riya'
update Customer set Country='Japan',Salary='400000',Pincode='4155780' Where CustomerName = 'Raj'
update Customer set Country='London',Salary='70000',Pincode='415787' Where CustomerName = 'Dev'
update Customer set Country='Pakistan',Salary='80000',Pincode='987654' Where CustomerName = 'Sam'
--Show number of customers in each country.
select * from Customer where Country='India'
select * from Customer where Country='USA'
SELECT COUNT(*) 
FROM Customer Where Country='India'
--Show maximum salary, minimum salary, total Salary and average salary for the customers.
--maximum salary
select Max(Salary) as Maximum_Salary from Customer
--minimum salary
select Min (Salary) as Minimum_Salary from Customer
--total Salary
select Sum(Salary) as Total_Salary_Of from Customer
--Average salary
SELECT AVG(Salary) FROM Customer;
--Create order table with columns order id, product name, quantity and rating.
Create Table ordertable(
OrderID int identity(1,1)Primary key,
ProductName varchar(100),
quantity varchar (200),
rating varchar (20)
);
insert into ordertable values
('Acer','30','1' ),
('Dell', '100','5'),
('hp', '90','4'),
('Asus', '80','2'),
('Lenovo','50','3')
select * from ordertable
select * from Customer
--Fetch data from both tables.

SELECT Customer.CustomerID, Customer.CustomerName, ordertable.ProductName
FROM Customer
INNER JOIN ordertable
ON Customer.CustomerID = ordertable.OrderID;

