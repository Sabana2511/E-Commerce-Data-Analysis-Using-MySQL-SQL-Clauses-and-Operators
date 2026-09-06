# 🛒 E-Commerce Data Analysis Using MySQL: SQL Clauses and Operators

## 📌 Project Overview

This project demonstrates the practical application of **SQL clauses and operators** using a simple E-Commerce database built with **MySQL**.

The project focuses on querying product and sales data using filtering, comparison, logical, arithmetic, membership, range, pattern-matching, and NULL-handling operations.

It is designed to strengthen fundamental SQL skills required for **Data Analysis and Business Intelligence**.

---

## 🎯 Objectives

* Create an E-Commerce database using MySQL.
* Design related `Product` and `Sales` tables.
* Apply SQL clauses and operators to retrieve relevant data.
* Filter records using different conditions.
* Perform calculations using arithmetic operators.
* Work with NULL values.
* Use pattern matching with `LIKE`.
* Practice `IN`, `NOT IN`, `BETWEEN`, and `NOT BETWEEN`.
* Combine multiple conditions using logical operators.
* Develop practical SQL querying skills for data analysis.

---

## 🗄️ Database Structure

**Database Name:** `ECommerceDB`

### Product Table

| Column       | Data Type     | Description               |
| ------------ | ------------- | ------------------------- |
| product_id   | INT           | Unique product identifier |
| product_name | VARCHAR(100)  | Name of the product       |
| price        | DECIMAL(10,2) | Product price             |

### Sales Table

| Column      | Data Type     | Description                |
| ----------- | ------------- | -------------------------- |
| sale_id     | INT           | Unique sales identifier    |
| product_id  | INT           | Reference to Product table |
| quantity    | INT           | Quantity sold              |
| sale_amount | DECIMAL(10,2) | Total sales amount         |

### 🔗 Relationship

`Product.product_id` → `Sales.product_id`

The relationship is maintained using a **Foreign Key**.

---

## 🛠️ Technologies Used

* **MySQL**
* **MySQL Workbench**
* **SQL**

---

## 📊 Sample Data

### Product Data

| Product ID | Product Name |  Price |
| ---------: | ------------ | -----: |
|          1 | Laptop       | 85,000 |
|          2 | Smartphone   | 45,000 |
|          3 | Headphones   |  5,000 |
|          4 | Keyboard     |  1,200 |
|          5 | Mouse        |    800 |
|          6 | Monitor      | 15,000 |
|          7 | Webcam       |  3,500 |

### Sales Data

| Sale ID | Product ID | Quantity | Sale Amount |
| ------: | ---------: | -------: | ----------: |
|       1 |          1 |        2 |     170,000 |
|       2 |          2 |        3 |     135,000 |
|       3 |          3 |        5 |      25,000 |
|       4 |          4 |       10 |      12,000 |
|       5 |          5 |       15 |      12,000 |
|       6 |          6 |        2 |      30,000 |
|       7 |          7 |        4 |      14,000 |

---

## 🔍 SQL Concepts Practiced

### 1. DISTINCT

Used to retrieve unique values.

```sql
SELECT DISTINCT product_name
FROM Product;
```

### 2. AS Alias

Used to provide a temporary name to a column.

```sql
SELECT product_name AS Product_Name
FROM Product;
```

### 3. WHERE Clause

Used to filter records based on a condition.

```sql
SELECT *
FROM Product
WHERE price > 10000;
```

### 4. Comparison Operators

Practiced:

* `>`
* `<`
* `>=`
* `<=`
* `=`
* `<>`
* `!=`

Example:

```sql
SELECT *
FROM Product
WHERE price >= 15000;
```

### 5. Arithmetic Operators

Performed calculations using:

* `+`
* `-`
* `*`
* `/`

Example:

```sql
SELECT price,
       price + (price * 0.10) AS total_price
FROM Product;
```

### 6. Logical Operators

Used:

* `AND`
* `OR`
* `NOT`

Example:

```sql
SELECT *
FROM Product
WHERE price > 5000
AND price < 50000;
```

### 7. NULL Handling

Used `IS NULL` and `IS NOT NULL` to check missing values.

```sql
SELECT *
FROM Sales
WHERE product_id IS NULL;
```

```sql
SELECT *
FROM Product
WHERE price IS NOT NULL;
```

### 8. IN and NOT IN

Used to filter records matching multiple values.

```sql
SELECT *
FROM Product
WHERE product_id IN (1, 3, 5);
```

```sql
SELECT *
FROM Product
WHERE product_id NOT IN (2, 4, 6);
```

### 9. BETWEEN and NOT BETWEEN

Used to filter values within or outside a specific range.

```sql
SELECT *
FROM Product
WHERE price BETWEEN 5000 AND 50000;
```

```sql
SELECT *
FROM Product
WHERE price NOT BETWEEN 5000 AND 50000;
```

### 10. LIKE and NOT LIKE

Used for pattern matching.

```sql
SELECT *
FROM Product
WHERE product_name LIKE 'M%';
```

This returns product names beginning with **M**.

```sql
SELECT *
FROM Product
WHERE product_name LIKE '%E';
```

This searches for product names ending with **E**.

---

## 📈 Practical Analysis Queries

### Products priced between ₹5,000 and ₹50,000

```sql
SELECT *
FROM Product
WHERE price > 5000
AND price < 50000;
```

### Products with specific IDs

```sql
SELECT *
FROM Product
WHERE product_id IN (1, 3, 5);
```

### Sales with quantity between 2 and 10

```sql
SELECT *
FROM Sales
WHERE quantity BETWEEN 2 AND 10;
```

### Products with IDs 1, 2, or 3 and price above ₹5,000

```sql
SELECT *
FROM Product
WHERE product_id IN (1, 2, 3)
AND price > 5000;
```

### Unique quantities sold

```sql
SELECT DISTINCT quantity
FROM Sales;
```

### Sale amount after adding ₹500

```sql
SELECT sale_amount,
       sale_amount + 500 AS new_sales_amount
FROM Sales;
```

---

## 💡 Key Learning Outcomes

Through this project, I practiced:

* Writing SQL queries
* Filtering data using `WHERE`
* Removing duplicate values using `DISTINCT`
* Creating column aliases using `AS`
* Applying comparison operators
* Performing calculations using arithmetic operators
* Combining conditions using logical operators
* Handling NULL values
* Filtering multiple values using `IN`
* Filtering ranges using `BETWEEN`
* Searching text patterns using `LIKE`

---

## 📌 Skills Demonstrated

**Technical Skills:**

* SQL
* MySQL
* Data Filtering
* Data Manipulation
* Relational Database Concepts
* SQL Operators
* Conditional Querying
* Basic Data Analysis

---

## 🚀 How to Run the Project

1. Install **MySQL** or **MySQL Workbench**.
2. Create the database:

```sql
CREATE DATABASE ECommerceDB;
USE ECommerceDB;
```

3. Create the `Product` and `Sales` tables.
4. Insert the sample data.
5. Execute the SQL queries.
6. Analyze the query results.

---

## 📂 Project Structure

```text
E-Commerce-Data-Analysis-MySQL/
│
├── README.md
├── ECommerceDB.sql
└── SQL_Queries.sql
```

---

## 🎯 Conclusion

This project provided hands-on experience with fundamental **SQL clauses and operators** using an E-Commerce dataset.

By working with product and sales data, I strengthened my ability to **filter, compare, calculate, and analyze data using SQL**. These concepts form an important foundation for advanced SQL, Data Analytics, and Business Intelligence projects.

---

## 👩‍💻 Author

**Sabana Asmi R**

**Aspiring Data Analyst**

Skills: **SQL | MySQL | Excel | Power BI | Tableau | Python**

---
