-- Table with JSON column
CREATE TABLE ProductsJSON (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    specs JSON
);

-- Insert JSON data
INSERT INTO ProductsJSON (id, name, specs)
VALUES (1, 'Laptop', '{"RAM": "16GB", "Storage": "512GB SSD"}');

-- Query JSON fields
SELECT name, JSON_UNQUOTE(JSON_EXTRACT(specs, '$.RAM')) AS RAM FROM ProductsJSON;
