
DataBase name = Orders

use Orders;
--SelectQueris
Select * from Products;

select * from Products where ProductName = "Moisturizer";

--orderBY
select ProductName, unitPrice from Products order by UnitPrice;

--GroupBy
select ShipCountry,count(*) from Buyers group by ShipCountry;

select distinct ProductName,count(*) from Products group by ProductName having productName = "Beauty";

--join
select ProductName,ItemQuantity from Products join Order_details on Products.ProductID = Order_Details.ProductID;
--innerJoin
select * from Supplier inner join Products on Supplier.SupplierID = Products.SupplierID;

select Supplier.SupplierID, Products.QuantityOnHand from Supplier inner join Products on Supplier.SupplierID = Products.SupplierID;
--Left Join
SELECT 
    Supplier.supplierID,
    Supplier.CompanyName,
    Products.productID,
    Products.productName
FROM 
    Supplier
LEFT JOIN 
    Products
ON 
    Supplier.supplierID = Products.supplierID;

--Right Join
SELECT 
    Supplier.supplierID,
    Supplier.CompanyName,
    Products.productID,
    Products.productName
FROM 
    Supplier
RIGHT JOIN 
    Products
ON 
    Supplier.supplierID = Products.supplierID;
--SubQueries
-- Find buyers who have ordered products from a specific supplier
SELECT buyerID, UserName
FROM Buyers
WHERE buyerID IN (
    SELECT DISTINCT buyerID
    FROM Order_Details
    WHERE productID IN (
        SELECT productID
        FROM Products
        WHERE supplierID = 12716365607
    )
);
--List products that have never been ordered

SELECT productID, productName
FROM Products
WHERE productID NOT IN (
    SELECT DISTINCT productID
    FROM Order_Details
);

--Aggregate Functions
--Total quantity of each product ordered
SELECT productID, SUM(Itemquantity) AS total_quantity_ordered
FROM Order_Details
GROUP BY productID;

--Average quantity per order for each product
SELECT productID, AVG(Itemquantity) AS avg_quantity
FROM Order_Details
GROUP BY productID;

--Views
--View of top-selling products (by quantity)
CREATE VIEW TopSellingProducts AS
SELECT 
    p.productID,
    p.productName,
    SUM(od.Itemquantity) AS total_quantity_sold
FROM Order_Details od
JOIN Products p ON od.productID = p.productID
GROUP BY p.productID, p.productName
ORDER BY total_quantity_sold DESC;

SELECT * FROM TopSellingProducts;
