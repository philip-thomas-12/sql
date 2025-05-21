-- Unnormalized table
CREATE TABLE Orders (
    order_id INT,
    customer_name VARCHAR(100),
    product1 VARCHAR(50),
    product2 VARCHAR(50)
);

-- Normalized tables
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100)
);

CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50)
);

CREATE TABLE OrdersNormalized (
    order_id INT PRIMARY KEY,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE OrderItems (
    order_id INT,
    product_id INT,
    FOREIGN KEY (order_id) REFERENCES OrdersNormalized(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);
