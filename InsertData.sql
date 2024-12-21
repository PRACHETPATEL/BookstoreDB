INSERT INTO Authors (AuthorID, AuthorName)
VALUES 
(1001, 'Prachet Patel'),
(1002, 'Parth Sharma'),
(1003, 'Ravi Patel'),
(1004, 'Prit Patel'),
(1005, 'Pratham Patel');
INSERT INTO Categories (CategoryID, CategoryName)
VALUES 
(2001, 'Science Fiction'),
(2002, 'Fantasy'),
(2003, 'Historical Fiction'),
(2004, 'Art and Design'),
(2005, 'Technology');
INSERT INTO Books (BookID, Title, AuthorID, CategoryID, Price, StockQuantity)
VALUES 
(3001, 'The Mystery of the Himalayas', 1001, 2001, 24.99, 15),
(3002, 'Tales of the Ancient Kingdom', 1002, 2002, 18.49, 9),
(3003, 'The Mughal Empire Chronicles', 1003, 2003, 35.79, 4),
(3004, 'Indian Art and Culture', 1004, 2004, 42.99, 0),
(3005, 'Revolutionizing Indian Tech', 1005, 2005, 29.99, 20),
(3006, 'The Indian Space Odyssey', 1001, 2001, 22.95, 13),
(3007, 'Mythological Heroes of India', 1002, 2002, 15.60, 8),
(3008, 'Cyber India: A New Dawn', 1003, 2005, 48.25, 7),
(3009, 'The British Raj: A Historical Study', 1004, 2003, 33.89, 5),
(3010, 'Artificial Intelligence in India', 1005, 2005, 54.75, 18);
INSERT INTO Orders (OrderID, CustomerName, OrderDate)
VALUES 
(4001, 'Prachet Patel', '2024-12-11'),
(4002, 'Neha Gupta', '2024-12-12'),
(4003, 'Rajesh Mehta', '2024-12-13');
INSERT INTO OrderDetails (OrderDetailID, OrderID, BookID, Quantity)
VALUES 
(5001, 4001, 3001, 2),
(5002, 4001, 3002, 1),
(5003, 4002, 3003, 3),
(5004, 4002, 3004, 1),
(5005, 4003, 3005, 4);
