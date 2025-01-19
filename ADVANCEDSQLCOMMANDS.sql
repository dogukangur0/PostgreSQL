SELECT NOW(); 				-- timestamp information
SELECT TIMEOFDAY(); 		-- same information as a string
SELECT CURRENT_TIME;
SELECT CURRENT_DATE;

SELECT * FROM payment;
-- EXTRACT(bileşen FROM tarih_zaman) - bileşen -> YEAR, MONTH, DAY, HOUR, MINUTE, SECOND vb.
SELECT EXTRACT(YEAR FROM DATE '2025-01-19') AS year; -- 2025

SELECT EXTRACT(YEAR FROM payment_date) FROM payment; 

SELECT AGE(payment_date) FROM payment; -- calculate how old this
SELECT AGE(DATE '11-10-2024',DATE '11-12-1990');

SELECT TO_CHAR(payment_date, 'MONTH-YYYY') from payment;
SELECT TO_CHAR(payment_date, 'MM-YYYY') from payment;
SELECT TO_CHAR(payment_date, 'MONTH YY') from payment;
SELECT TO_CHAR(payment_date, 'MM-DD-YYYY') from payment;
SELECT TO_CHAR(payment_date, 'HH12-MI-SS') from payment; -- convert time stampt to string

SELECT * FROM payment;
SELECT DISTINCT TO_CHAR(payment_date,'MONTH') FROM payment;

SELECT COUNT(EXTRACT(DOW FROM payment_date)) FROM payment WHERE EXTRACT(DOW FROM payment_date) = 1; -- 1-> monday


SELECT LOWER(LEFT(first_name,1))|| LOWER(last_name) || '@gmail.com'  FROM customer;



