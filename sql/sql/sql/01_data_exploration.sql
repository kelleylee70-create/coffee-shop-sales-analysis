-- Coffee Shop Sales Analysis
-- File: 01_data_exploration.sql
-- Purpose: Understand the structure and contents of the dataset
-- before answering business questions.

-- View a sample of the data
SELECT *
FROM transactions
LIMIT 10;

-- Count the total number of transaction rows
SELECT
    COUNT(*) AS total_transactions
FROM transactions;

-- View the product categories in the dataset
SELECT DISTINCT
    product_category
FROM transactions
ORDER BY product_category;

-- View the store locations in the dataset
SELECT DISTINCT
    store_location
FROM transactions
ORDER BY store_location;

-- Check the earliest and latest transaction dates
SELECT
    MIN(transaction_date) AS earliest_transaction_date,
    MAX(transaction_date) AS latest_transaction_date
FROM transactions;
