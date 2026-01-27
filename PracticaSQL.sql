USE Northwind

SELECT * FROM [Order Details]

--1 Filtracion basica
SELECT * FROM Suppliers WHERE Country = 'Germany';


--2 Operadores de comparacion
SELECT ProductName, UnitPrice FROM Products WHERE UnitPrice > 50;


SELECT CustomerID,Freight FROM Orders WHERE Freight>100 ORDER BY Freight ASC;

--3 Condicional and
SELECT FirstName, LastName, Title, City FROM Employees
WHERE Title = 'Sales Representative' AND City = 'London';

SELECT ProductName,UnitPrice,UnitsinStock FROM Products WHERE UnitsInStock>0 AND UnitPrice<20;

--4 Busqueda de patrones (Like)
SELECT CompanyName, ContactName FROM Customers WHERE CompanyName LIKE 'A%';

SELECT * FROM Employees where Title LIKE 'Manager_%' OR Title LIKE '%_Manager'

--5 Ordenamiento

SELECT ProductName, UnitPrice FROM Products ORDER BY UnitPrice ASC;

SELECT * FROM Orders ORDER BY OrderDate DESC

--6 Contar datos

SELECT COUNT(*) FROM Products

SELECT COUNT(*)From Customers WHERE Country='USA' 