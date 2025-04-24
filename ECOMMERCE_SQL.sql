USE ECOMMERCE;
CREATE TABLE ORDERS(
ID INT,
Warehouse_block VARCHAR(1000),
Mode_of_Shipment VARCHAR(100),
Customer_care_calls INT,
Customer_rating INT,
Cost_of_the_Product INT,
Prior_purchases INT,
Product_importance VARCHAR(1000),
Gender VARCHAR(1000),
Discount_offered INT,
Weight_in_gms INT,
Reached_on_Time_Y_N INT
);
SELECT * FROM ORDERS;

SELECT Warehouse_block
FROM ORDERS;

DESCRIBE ORDERS;

SELECT ID, Cost_of_the_Product, Mode_of_Shipment
FROM orders
WHERE Cost_of_the_Product > 200
ORDER BY Cost_of_the_Product DESC;

SELECT Mode_of_Shipment, AVG(Cost_of_the_Product) AS Avg_Cost
FROM orders
GROUP BY Mode_of_Shipment;

SELECT Product_importance, SUM(Discount_offered) AS Total_Discount
FROM orders
GROUP BY Product_importance;

SELECT *
FROM orders
WHERE Discount_offered > (
    SELECT AVG(Discount_offered) FROM orders
);

CREATE VIEW LateShipments AS
SELECT ID, Mode_of_Shipment, Reached_on_Time_Y_N
FROM orders
WHERE Reached_on_Time_Y_N = 0;

-- Query the view
SELECT * FROM LateShipments;

CREATE INDEX idx_product_importance ON orders(Product_importance(10));