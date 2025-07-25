-- Create categories table
CREATE TABLE categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(50),
    description TEXT
);

-- Insert data into categories table
INSERT INTO categories (category_id, category_name, description) VALUES
(1, 'Beverages', 'Soft drinks, coffees, teas, beers, and ales'),
(2, 'Condiments', 'Sweet and savory sauces, relishes, spreads, and seasonings'),
(3, 'Confections', 'Desserts, candies, and sweet breads'),
(4, 'Dairy Products', 'Cheeses'),
(5, 'Grains/Cereals', 'Breads, crackers, pasta, and cereal'),
(6, 'Meat/Poultry', 'Prepared meats'),
(7, 'Produce', 'Dried fruit and bean curd'),
(8, 'Seafood', 'Seaweed and fish'),
(9, 'Health Foods', 'Low sugar and nutritious options'),
(10, 'Spicy Goods', 'Very spicy or unique flavor profiles'),
(11, 'Family Secrets', 'Homemade and traditional recipes'),
(12, 'Fruits', 'Apples, bananas, berries, etc.'),
(13, 'Fast Food', 'Pizza, burgers, and quick meals'),
(14, 'Frozen Desserts', 'Ice creams and frozen treats');

-- Create products table
CREATE TABLE products (
    testproduct_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);

-- Insert data into products table
INSERT INTO products (testproduct_id, product_name, category_id) VALUES
(1, 'Johns Fruit Cake', 3),
(2, 'Marys Healthy Mix', 9),
(3, 'Peters Scary Stuff', 10),
(4, 'Jims Secret Recipe', 11),
(5, 'Elisabeths Best Apples', 12),
(6, 'Janes Favorite Cheese', 4),
(7, 'Billys Home Made Pizza', 13),
(8, 'Ellas Special Salmon', 8),
(9, 'Roberts Rich Spaghetti', 5),
(10, 'Mias Popular Ice', 14);


select testproduct_id , product_name, category_name , description
from products
join categories on products.category_id = categories.category_id	



