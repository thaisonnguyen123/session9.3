DROP TABLE IF EXISTS products;

CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(50) NOT NULL,
    price DECIMAL(12,2) NOT NULL CHECK (price > 0),
    stock INT NOT NULL CHECK (stock > 0)
);

INSERT INTO products (product_name, price, stock) VALUES
('Dell Inspiron', 15000000, 10),
('MacBook Air', 23000000, 5),
('Asus Vivobook', 14000000, 7),
('HP Pavilion', 12000000, 8),
('Lenovo ThinkPad', 18000000, 6),
('iPhone 15', 28000000, 12),
('iPhone 14', 22000000, 9),
('Samsung S22', 18000000, 15),
('Xiaomi Redmi Note', 6000000, 20),
('Oppo Reno 8', 9000000, 18),
('Logitech Mouse', 500000, 30),
('Apple Keyboard', 2500000, 25),
('LG Monitor', 3500000, 14),
('Dell Monitor', 4000000, 10),
('Sony Headphones', 1200000, 22),
('JBL Speaker', 1500000, 17),
('Canon EOS M50', 16000000, 4),
('Nikon D3500', 14000000, 5),
('GoPro Hero 11', 11000000, 7),
('Anker Charger', 450000, 40);

DELIMITER $$

CREATE PROCEDURE get_high_value_products()
BEGIN
    SELECT *
    FROM products
    WHERE price > 1000000;
END $$

DELIMITER ;

CALL get_high_value_products();

