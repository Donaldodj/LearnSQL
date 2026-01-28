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

SELECT * FROM Employees where Title LIKE '%Manager%'

--5 Ordenamiento

SELECT ProductName, UnitPrice FROM Products ORDER BY UnitPrice ASC;

SELECT * FROM Orders ORDER BY OrderDate DESC

--6 Contar datos

SELECT COUNT(*) FROM Products

SELECT COUNT(*)From Customers WHERE Country='USA' 

--Fase 2 Conectar Tablas y agrupar datos

--Unir tablas (INNER JOIN)

--Listar productos junto con el nombre de la categoria
SELECT Products.ProductName, Categories.CategoryName
FROM Products
INNER JOIN Categories ON Products.CategoryID= Categories.CategoryID;

--Lista de pedidos que incluya orderID y fecha
--con el nombre de la compañia del cliente

SELECT o.OrderID , o.OrderDate, Customers.CompanyName
FROM Orders o
INNER JOIN Customers ON o.CustomerID= Customers.CustomerID;


--Agregacion basica(SUM,AVG,MAX,MIN)
--cual es el precio promedio de todos nuestros productos

SELECT AVG(UnitPrice) as [Precio Promedio] FROM Products;

--Suma total del transporte de todos los pedidos en la tabla Orders

SELECT SUM(Freight) as [Suma total transporte] FROM Orders;

--Agrupacion de datos(GROUP BY)

--¿Cuantos productos nos provee cada Suplidor?
SELECT SupplierID, COUNT(*) FROM Products
GROUP BY SupplierID;