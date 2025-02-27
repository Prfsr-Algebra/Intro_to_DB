CREATE DATABASE IF NOT EXISTS alx_book_store;
CREATE TABLE Books(
book_id INT AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(130) NOT NULL,
FOREIGN KEY (author_id) REFERENCES Authors(author_id)
price DOUBLE NOT NULL,
publication_date DATE NOT NULL
)
CREATE TABLE Authors(
author_id INT AUTO_INCREMENT PRIMARY KEY,
author_name VARCHAR(215)NOT NULL
)
CREATE TABLE Customers(
customer_id INT AUTO_INCREMENT PRIMARY KEY,
customer_name VARCHAR(215) NOT NULL,
email VARCHAR(215) NOT NULL UNIQUE,
address TEXT NOT NULL
)
CREATE TABLE Orders(
order_id INT AUTO_INCREMENT PRIMARY KEY,
FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
order_date DATE NOT NULL
)
CREATE TABLE Order_Details(
order_details_id INT AUTO_INCREMENT PRIMARY KEY,
FOREIGN KEY (order_id) REFERENCES Orders(order_id),
FOREIGN KEY (book_id) REFERENCES Books(book_id)
quantity DOUBLE NOT NUL
)
