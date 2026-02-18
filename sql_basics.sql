USE bank;
SELECT * FROM bank.client;

/* Query 1 */
SELECT client_id 
FROM bank.client
WHERE district_id = 1
ORDER BY client_id ASC
LIMIT 5;

/* Query 2 */
SELECT client_id
FROM bank.client
WHERE district_id = 72
ORDER BY client_id DESC
LIMIT 1;

/* Query 3 */
SELECT amount 
FROM bank.loan
ORDER BY amount ASC
LIMIT 3;

/* Query 4 */
SELECT status 
FROM bank.loan
GROUP BY status
ORDER BY status ASC;

/* Query 5 */
SELECT loan_id
FROM bank.loan
ORDER BY payments DESC
LIMIT 1;

/* Query 6 */
SELECT account_id, amount
FROM bank.loan
ORDER BY account_id ASC
LIMIT 5;

/* Query 7 */
SELECT account_id
FROM bank.loan
WHERE duration = 60
ORDER BY amount ASC
LIMIT 5;

/* Query 8 */
SELECT DISTINCT k_symbol
FROM `order`
ORDER BY k_symbol ASC;

/* Query 9 */
SELECT order_id
FROM `order`
WHERE account_id = 34;

/* Query 10 */
SELECT account_id
FROM `order`
WHERE order_id BETWEEN 29540 AND 29560
GROUP BY account_id;

/* Query 11 */
SELECT DISTINCT amount
FROM `order`
WHERE account_to = 30067122;

/* Query 12 */
SELECT trans_id, date, type, amount
FROM bank.trans
WHERE account_id = 793
ORDER BY date DESC
LIMIT 10;

/* Query 13 */
SELECT district_id, COUNT(client_id) AS count_clients
FROM bank.client
WHERE district_id < 10
GROUP BY district_id
ORDER BY district_id ASC;

/* Query 14 */
SELECT type, COUNT(card_id) AS card_amount 
FROM bank.card
GROUP BY type
ORDER BY card_amount DESC; 

/* Query 15 */
SELECT account_id, SUM(amount) AS total_amount 
FROM bank.loan
GROUP BY account_id
ORDER BY total_amount DESC
LIMIT 10;

/* Query 16 */
SELECT date, COUNT(loan_id) as number_loans
FROM bank.loan
WHERE date < 930907
GROUP BY date
ORDER BY date DESC; 

/* Query 17 */
SELECT LEFT(CAST(date AS CHAR), 6) AS loan_date,
duration, 
COUNT(loan_id) as amount_loans
FROM bank.loan
WHERE LEFT(CAST(date AS CHAR), 4) = '9712'
GROUP BY duration, loan_date
ORDER BY loan_date ASC, duration ASC;

/* Query 18 */
SELECT account_id, type, SUM(amount) AS total_amount
FROM bank.trans
WHERE account_id = 396
GROUP by type
ORDER by type ASC;