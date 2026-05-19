/*  1. Create a report that shows the CategoryName and Description 
from the categories table sorted by
CategoryName.*/

select CategoryName, Description 
from categories
order by CategoryName asc;

/* 2. Create a report that shows the ContactName, CompanyName, ContactTitle 
and Phone number from the customers table; sorted by Phone.*/

select ContactName, CompanyName, ContactTitle, Phone
from customers
order by phone asc;

/*3. Create a report that shows the capitalized FirstName and capitalized LastName renamed as FirstName
and Lastname respectively and HireDate from the employees table sorted from the newest to the oldest employee*/

select upper(FirstName) AS FirstName, upper(LastName) AS Lastname, HireDate
from employees
order by HireDate asc; 

/*4. Create a report that shows the top 10 OrderID, OrderDate, ShippedDate, CustomerID, Freight from the
orders table sorted by Freight in descending order */

select	OrderID, OrderDate, ShippedDate, CustomerID, Freight
from orders
order by Freight desc
limit 10;

/*5.  Create a report that shows all the CustomerID in lowercase letter and renamed as ID 
from the customers table.*/

select lower(CustomerID) AS ID
from customers;

/*6. Create a report that shows the CompanyName, Fax, Phone, Country, HomePage from 
the suppliers table sorted by the Country in descending order then 
by CompanyName in ascending order */

select CompanyName, Fax, Phone, Country, HomePage
from suppliers 
Order by Country desc, CompanyName asc;

/*7.Create a report that shows CompanyName, ContactName of all customers from ‘Buenos Aires' only */

select CompanyName, ContactName 
from customers
Where city = 'Buenos Aires';

/*8. Create a report showing ProductName, UnitPrice, QuantityPerUnit of products that are out of stock.*/

select ProductName, UnitPrice, QuantityPerUnit
from products
where UnitsInStock = 0;

/*9. Create a report showing all the ContactName, Address, City of all customers not from Germany,
Mexico, Spain.*/

select ContactName, Address, City
from customers
where Country not in ('Germany');

/*10. Create a report showing OrderDate, ShippedDate, CustomerID, Freight of all orders placed on 21 May
1996.*/

select OrderDate, ShippedDate, CustomerID, Freight
from orders
where OrderDate = '1996-05-21';

/*11. Create a report showing FirstName, LastName, Country from the employees not from United States.*/

select FirstName, LastName, Country
from employees
where country not in ('USA');

/*12. Create a report that shows the EmployeeID, OrderID, CustomerID, RequiredDate, 
ShippedDate from all orders shipped later than the required date.*/

select EmployeeID, OrderID, CustomerID, RequiredDate, ShippedDate
from orders
where ShippedDate > RequiredDate;
