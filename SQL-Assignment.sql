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

