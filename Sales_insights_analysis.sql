/*Show all date records*/
SELECT * FROM sales.date;

/*Show transactions in 2020 join by date table*/
SELECT 
    sales.transactions.*, sales.date.*
FROM
    sales.transactions
        INNER JOIN
    sales.date ON sales.transactions.order_date = sales.date.date
WHERE
    sales.date.year = 2020;

/*Show transactions in 2019 join by date table*/
SELECT 
    sales.transactions.*, sales.date.*
FROM
    sales.transactions
        INNER JOIN
    sales.date ON sales.transactions.order_date = sales.date.date
WHERE
    sales.date.year = 2019;

/*Show total revenue in year 2020,*/
SELECT 
    SUM(sales.transactions.sales_amount)
FROM
    sales.transactions
        INNER JOIN
    sales.date ON sales.transactions.order_date = sales.date.date
WHERE
    sales.date.year = 2020
        AND sales.transactions.currency = 'INR'
        OR sales.transactions.currency = 'USD';

/*Show total revenue in year 2019,*/
SELECT 
    SUM(sales.transactions.sales_amount)
FROM
    sales.transactions
        INNER JOIN
    sales.date ON sales.transactions.order_date = sales.date.date
WHERE
    sales.date.year = 2019
        AND sales.transactions.currency = 'INR'
        OR sales.transactions.currency = 'USD';

/*Show  avarage in year 2020,*/
SELECT 
    AVG(sales.transactions.sales_amount)
FROM
    sales.transactions
        INNER JOIN
    sales.date ON sales.transactions.order_date = sales.date.date
WHERE
    sales.date.year = 2020
        AND sales.transactions.currency = 'INR'
        OR sales.transactions.currency = 'USD';

/*Show  avarage in year 2019,*/
SELECT 
    AVG(sales.transactions.sales_amount)
FROM
    sales.transactions
        INNER JOIN
    sales.date ON sales.transactions.order_date = sales.date.date
WHERE
    sales.date.year = 2019
        AND sales.transactions.currency = 'INR'
        OR sales.transactions.currency = 'USD';

/*Show  max sales amount in year 2019,*/
SELECT 
    MAX(sales.transactions.sales_amount)
FROM
    sales.transactions
        INNER JOIN
    sales.date ON sales.transactions.order_date = sales.date.date
WHERE
    sales.date.year = 2019
        AND sales.transactions.currency = 'INR'
        OR sales.transactions.currency = 'USD';

/*Show total revenue in year 2020, January Month,*/
SELECT 
    SUM(transactions.sales_amount)
FROM
    sales.transactions
        INNER JOIN
    sales.date ON sales.transactions.order_date = sales.date.date
WHERE
    sales.date.year = 2020
        AND sales.date.month_name = 'January'
        AND (sales.transactions.currency = 'INR'
        OR sales.transactions.currency = 'USD');

/*Show total revenue in year 2020, February Month,*/
SELECT 
    SUM(transactions.sales_amount)
FROM
    sales.transactions
        INNER JOIN
    sales.date ON sales.transactions.order_date = sales.date.date
WHERE
    sales.date.year = 2020
        AND sales.date.month_name = 'February'
        AND (sales.transactions.currency = 'INR'
        OR sales.transactions.currency = 'USD');

/*Show total revenue in year 2019, January Month,*/
SELECT 
    SUM(transactions.sales_amount)
FROM
    sales.transactions
        INNER JOIN
    sales.date ON sales.transactions.order_date = sales.date.date
WHERE
    sales.date.year = 2019
        AND sales.date.month_name = 'January'
        AND (sales.transactions.currency = 'INR'
        OR sales.transactions.currency = 'USD');

/*Show total revenue in year 2019, February Month,*/
SELECT 
    SUM(transactions.sales_amount)
FROM
    sales.transactions
        INNER JOIN
    sales.date ON sales.transactions.order_date = sales.date.date
WHERE
    sales.date.year = 2019
        AND sales.date.month_name = 'February'
        AND (sales.transactions.currency = 'INR'
        OR sales.transactions.currency = 'USD');

/*Show total revenue in year 2020 in Chennai*/
SELECT 
    SUM(sales.transactions.sales_amount)
FROM
    sales.transactions
        INNER JOIN
    sales.date ON sales.transactions.order_date = sales.date.date
WHERE
    sales.date.year = 2020
        AND sales.transactions.market_code = 'Mark001';

/*Show total revenue in year 2020 in Mumbai*/
SELECT 
    SUM(sales.transactions.sales_amount)
FROM
    sales.transactions
        INNER JOIN
    sales.date ON sales.transactions.order_date = sales.date.date
WHERE
    sales.date.year = 2020
        AND sales.transactions.market_code = 'Mark002';

/*show the distinct product channai*/
SELECT DISTINCT
    product_code
FROM
    sales.transactions
WHERE
    market_code = 'Mark001';

/*show the distinct product Mumbai*/
SELECT DISTINCT
    product_code
FROM
    sales.transactions
WHERE
    market_code = 'Mark002';

/*Show total revenue in year 2020, January Month, in channai*/
SELECT 
    SUM(transactions.sales_amount)
FROM
    sales.transactions
        INNER JOIN
    sales.date ON sales.transactions.order_date = sales.date.date
WHERE
    sales.date.year = 2020
        AND sales.date.month_name = 'January'
        AND (sales.transactions.currency = 'INR'
        OR sales.transactions.currency = 'USD')
        AND sales.transactions.market_code = 'Mark001';

/*Show total revenue in year 2020, February Month, channai*/
SELECT 
    SUM(transactions.sales_amount)
FROM
    sales.transactions
        INNER JOIN
    sales.date ON sales.transactions.order_date = sales.date.date
WHERE
    sales.date.year = 2020
        AND sales.date.month_name = 'February'
        AND (sales.transactions.currency = 'INR'
        OR sales.transactions.currency = 'USD')
        AND sales.transactions.market_code = 'Mark001';

/*Show total revenue in year 2020, January Month, in mumbai*/
SELECT 
    SUM(transactions.sales_amount)
FROM
    sales.transactions
        INNER JOIN
    sales.date ON sales.transactions.order_date = sales.date.date
WHERE
    sales.date.year = 2020
        AND sales.date.month_name = 'January'
        AND (sales.transactions.currency = 'INR'
        OR sales.transactions.currency = 'USD')
        AND sales.transactions.market_code = 'Mark002';

/*Show total revenue in year 2020, February Month, mumbai*/
SELECT 
    SUM(transactions.sales_amount)
FROM
    sales.transactions
        INNER JOIN
    sales.date ON sales.transactions.order_date = sales.date.date
WHERE
    sales.date.year = 2020
        AND sales.date.month_name = 'February'
        AND (sales.transactions.currency = 'INR'
        OR sales.transactions.currency = 'USD')
        AND sales.transactions.market_code = 'Mark002';
