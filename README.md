# Data-Internship_task_3-MySql-E-commerce Orders SQL.

# Features

- Create `ORDERS` table with relevant fields
- Perform basic `SELECT`, `WHERE`, `GROUP BY`, and `ORDER BY` queries
- Create a view for late shipments
- Create an index to optimize queries

# Technologies Used

- SQL (MySQL syntax)

# Tools Used
Database: MySQL (can also be used with PostgreSQL/SQLite with slight syntax adjustments)
Interface: MySQL Workbench (for running queries and capturing output screenshots)
Dataset: orders table from an E-commerce SQL database (manually imported CSV)
Dataset Description*
The dataset contains information about product orders, including shipment method, customer interaction, pricing, discounts, and delivery performance.

# Dataset: Shipment Data

| Column Name              | Data Type     | Description                                   |
|--------------------------|---------------|-----------------------------------------------|
| `ID`                     | INT           | Unique identifier for each order              |
| `Warehouse_block`        | VARCHAR(10)   | Zone in the warehouse where product is stored |
| `Mode_of_Shipment`       | VARCHAR(20)   | Shipment method (e.g., Flight, Ship)          |
| `Customer_care_calls`    | INT           | Number of customer support calls              |
| `Customer_rating`        | INT           | Rating from customer (1 to 5)                 |
| `Cost_of_the_Product`    | INT           | Cost of the purchased product                 |
| `Prior_purchases`        | INT           | Number of previous purchases by customer      |
| `Product_importance`     | VARCHAR(15)   | Product importance: Low / Medium / High       |
| `Gender`                 | VARCHAR(10)   | Customer gender                               |
| `Discount_offered`       | INT           | Discount applied on the product               |
| `Weight_in_gms`          | INT           | Weight of the product in grams                |
| `Reached_on_Time_Y_N`    | INT (binary)  | Delivery status: 1 = Delayed, 0 = On time     |

screenshots/ → Images of query outputs from MySQL Workbench

README.md → Overview of the task, dataset, and contents

ecommerce_orders.csv (optional) → Source dataset (if submission allows it)

