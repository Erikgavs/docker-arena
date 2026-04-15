-- datbase created  
CREATE DATABASE tienda;

-- We connect to our database
\c tienda

-- We create a table (clients)
CREATE TABLE clients (
    id      SERIAL PRIMARY KEY,
    name    VARCHAR(100) UNIQUE NOT NULL,
    email   VARCHAR(100) UNIQUE NOT NULL,
    data    DATE DEFAULT CURRENT_DATE
);

-- second table
CREATE TABLE products (
    id     SERIAL PRIMARY KEY,
    name   VARCHAR(100) UNIQUE,
    -- numeric and allows 10 digits and 2 decimals
    price  NUMERIC(10, 2) NOT NULL,
    stock  INT DEFAULT 0
    
);

-- Third table
CREATE TABLE request(
    id           SERIAL PRIMARY KEY,
    client_id    INT REFERENCES clients(id),
    product_id   INT REFERENCES products(id),
    quantity     INT NOT NULL,
    request_data TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
