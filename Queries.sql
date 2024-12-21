/*
1 Basic Queries
1.1 Retrieve all books along with their authors and categories:
*/
SELECT b.Title, a.AuthorName, c.CategoryName
FROM Books b
INNER JOIN Authors a ON b.AuthorID = a.AuthorID
INNER JOIN Categories c ON b.CategoryID = c.CategoryID;
/*
1.2 Find books that are out of stock (StockQuantity = 0)::
*/
SELECT * 
FROM Books 
WHERE StockQuantity = 0;
/*
2. Aggregate Functions
2.1 Find the total revenue generated from all orders:
*/
SELECT SUM(od.Quantity * b.Price) AS TotalRevenue
FROM OrderDetails od
JOIN Books b ON od.BookID = b.BookID;
/*
2.2 Get the number of books available in each category:
*/
SELECT c.CategoryName, SUM(b.StockQuantity) AS TotalBooks
FROM Books b
JOIN Categories c ON b.CategoryID = c.CategoryID
GROUP BY c.CategoryName;
/*
3 Joins
3.1 List all orders along with the customer name, order date, book titles, and quantity ordered:
*/
SELECT o.CustomerName, o.OrderDate, b.Title, od.Quantity
FROM Orders o
JOIN OrderDetails od ON o.OrderID = od.OrderID
JOIN Books b ON od.BookID = b.BookID;
/*
4 Subqueries
4.1 Find the most expensive book in the Science Fiction category:
*/
SELECT TOP 1 Title, Price 
FROM Books 
WHERE CategoryID = (SELECT CategoryID FROM Categories WHERE CategoryName = 'Science Fiction')
ORDER BY Price DESC;
/*
4.2 List customers who have ordered more than 5 books in a single order:
*/
SELECT o.CustomerName, o.OrderID
FROM Orders o
JOIN OrderDetails od ON o.OrderID = od.OrderID
GROUP BY o.CustomerName, o.OrderID
HAVING SUM(od.Quantity) > 5;
/*
5 Advanced Queries
5.1 Identify authors whose books have generated revenue exceeding $500:
*/
SELECT a.AuthorName
FROM Authors a
JOIN Books b ON a.AuthorID = b.AuthorID
JOIN OrderDetails od ON b.BookID = od.BookID
GROUP BY a.AuthorName
HAVING SUM(od.Quantity * b.Price) > 500;
/*
5 Advanced Queries
5.2 Calculate the stock value (price × stock quantity) of all books and list the top 3 books by stock value:
*/
SELECT TOP 3 Title, Price * StockQuantity AS StockValue
FROM Books
ORDER BY StockValue DESC;
/*
6 Stored Procedure 
6.1 Write a stored procedure GetBooksByAuthor that accepts an AuthorID as input and returns all books by that author:
*/
CREATE PROCEDURE GetBooksByAuthor (@AuthorID INT)
AS
BEGIN
    SELECT Title, Price, StockQuantity
    FROM Books
    WHERE AuthorID = @AuthorID;
END;
GO
EXEC GetBooksByAuthor @AuthorID = 2003;
/*
7 Views
7.1 Create a view TopSellingBooks that lists the top 5 books based on total quantity sold:
*/

/*
8 Indexes
8.1 Create an index on the Books table for the Title column to optimize search performance:
*/
CREATE INDEX IDX_Books_Title ON Books(Title);
GO