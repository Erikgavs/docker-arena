
-- this .sql doc is to "feed" the sql tables

-- we execute the db
\c tienda

-- email examples
INSERT INTO clients (name, email) VALUES
    ('Ana García', 'ana@gmail.com'),
    ('José Bartolomé', 'jobar@gmail.com'),
    ('Paula López', 'paulalop@hotmail.com');

-- Sample products
INSERT INTO products (name, price, stock) VALUES
    ('Mechanichal keyboard', 69.99, 15),
    ('Mouse', 14.99, 3),
    ('AirPods', 229.99, 6);

-- Sample request (orders)
INSERT INTO request (client_id, product_id, quantity) VALUES
    (1, 1, 3),
    (2, 3, 1),
    (3, 2, 2);
