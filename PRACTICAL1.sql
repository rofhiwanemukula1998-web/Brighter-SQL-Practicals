---------------------------------------------------------------------
--Q1. Display all columns for all transactions.
--Expected output: All columns

SELECT *
FROM practical1.dataset.retail_sales;

---------------------------------------------------------------------

-- Q2. Display only the Transaction ID, Date, and Customer ID for all records.
-- Expected output: Transaction ID, Date, Customer ID
SELECT transaction_id,
       date,
       customer_id
FROM practical1.dataset.retail_sales;

---------------------------------------------------------------------

-- Q3. Display all the distinct product categories in the dataset.
-- Expected output: Product Category
SELECT DISTINCT product_category
FROM practical1.dataset.retail_sales;
