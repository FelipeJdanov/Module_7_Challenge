-- How can you isolate (or group) the transactions of each cardholder?
SELECT c.cardholder_id, t.id
FROM transaction t 
JOIN credit_card c ON t.card = c.card
GROUP BY c.cardholder_id, t.id
ORDER BY c.cardholder_id;

-- Count the transactions that are less than $2.00 per cardholder.
SELECT c.cardholder_id,	count(t.id) AS transctions_count
FROM transaction t 
JOIN credit_card c ON t.card = c.card
WHERE t.amount < 2
GROUP BY c.cardholder_id
ORDER BY c.cardholder_id;

-- Is there any evidence to suggest that a credit card has been hacked? Explain your rationale.
-- Yes, there are several transactions where the number of decimal places is greater than two.

-- What are the top 100 highest transactions made between 7:00 am and 9:00 am?
SELECT c.cardholder_id, t.*
FROM transaction t 
JOIN credit_card c ON t.card = c.card
WHERE cast(t.date::timestamp as time) > '7:00:00' 
	AND cast(t.date::timestamp as time) < '9:00:00'
LIMIT 100;


-- Do you see any anomalous transactions that could be fraudulent?
-- Yes, all transactions with more than two decimal places

-- Is there a higher number of fraudulent transactions made during this time frame versus the rest of the day?

-- Is there a higher number of fraudulent transactions made during this time frame versus the rest of the day?

-- If you answered yes to the previous question, explain why you think there might be fraudulent transactions during this time frame.

-- What are the top 5 merchants prone to being hacked using small transactions?

-- Create a view for each of your queries.