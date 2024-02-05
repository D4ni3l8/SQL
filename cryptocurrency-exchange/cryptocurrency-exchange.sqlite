-- query #1 displaying column names
SELECT * FROM transactions
LIMIT 10;

-- query #2 sum in total_in table 
SELECT SUM(money_in) AS 'Total money in' FROM transactions;

-- query #3 total money_out in the table
SELECT SUM(money_out) AS 'Total money out' FROM transactions;

-- query #4 money_in transactions where ‘BIT’ is the currency
SELECT COUNT(money_in) AS 'BIT money in' FROM transactions
WHERE currency = 'BIT';

-- query #5 largest transaction
SELECT MAX(money_in) AS 'Max money_in' FROM transactions;

SELECT MAX(money_out) AS 'Max money_out' FROM transactions;

-- query #6 average money_in in the table for the currency Ethereum (‘ETH’)?
SELECT AVG(money_in) AS 'Average money in (ETH)' FROM transactions
WHERE currency = "ETH";

-- query #7 Select date, average money_in, and average money_out from the table.
-- round the averages to 2 decimal places.
-- give the column aliases using AS for readability and grouping everything by date
SELECT date, ROUND(AVG(money_in), 2) AS 'Average money in', ROUND(AVG(money_out), 2) AS 'Average money out' FROM transactions 
GROUP BY date
