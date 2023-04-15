--Welcome to SQL Practice Problem
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
