CREATE TABLE Authors(
	AuthorID INT PRIMARY KEY,
	AuthorName VARCHAR(100)
);
CREATE TABLE Categories(
	CategoryID INT PRIMARY KEY,
	CategoryName VARCHAR(50)
);
CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(100) NOT NULL,
    AuthorID INT,
    CategoryID INT,
    Price DECIMAL(10,2) NOT NULL,
    StockQuantity INT NOT NULL,
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID),
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100) NOT NULL,
    OrderDate DATE NOT NULL
);
CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    BookID INT,
    Quantity INT NOT NULL,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);