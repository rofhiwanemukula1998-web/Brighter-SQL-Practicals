-- To check all the column names in my data.
-- To check the data types in my data
SELECT*
FROM casestudy.bright.coffee_shop
LIMIT 10;

---------------------------------------------------------
-- I want to check my categorical columns 
SELECT DISTINCT store_location
FROM casestudy.bright.coffee_shop;

SELECT DISTINCT product_category
FROM casestudy.bright.coffee_shop;


SELECT MIN(transaction_date) AS first_operarating_date
FROM casestudy.bright.coffee_shop;

SELECT MAX(transaction_date) AS last_operating_date
FROM casestudy.bright.coffee_shop;


SELECT MIN(transaction_time) AS opening_hour
FROM casestudy.bright.coffee_shop;

SELECT MAX(transaction_time) AS closing_hour
FROM casestudy.bright.coffee_shop;


-----------------------

SELECT transaction_date,
       DAYNAME(transaction_date) AS day_name,
       CASE
        WHEN day_name IN ('Sun', 'Sat') THEN 'Weekend'
        ELSE 'Weekday'
       END AS day_classification,
       MONTHNAME(transaction_date) AS month_name,
       
       -- transaction_time,
        CASE
            WHEN transaction_time BETWEEN '06:00:00' AND '11:59:59' THEN 'Morning'
            WHEN transaction_time BETWEEN '12:00:00' AND '16:59:59' THEN 'Afternoon'
            WHEN transaction_time >= '17:00:00' THEN 'Evening'
        END AS time_classification,
       
       HOUR(transaction_time) AS hour_of_day,

       --categorical data
       store_location,
       product_category,
       product_detail,
       product_type,

        -- ID's
        COUNT(DISTINCT transaction_id) AS number_of_sales,

        -- Revenue calculation
        SUM(transaction_qty*unit_price) AS revenue
       
FROM casestudy.bright.coffee_shop
GROUP BY ALL;




















