-- loading data for card holder 2 and 18 from the database
select t.*, c.*
from transaction t 
join credit_card c on t.card = c.card
where c.cardholder_id in (2,18);

-- loading data of daily transactions from jan to jun 2018 for card holder 25
select t.date, t.amount
from transaction t 
join credit_card c on t.card = c.card
where c.cardholder_id = 25 and 
	t.date BETWEEN '2018-01-01' AND '2018-07-01';
	
	
select t.* from transaction t
from transaction t 
join credit_card c on t.card = c.card
where c.cardholder_id = ?;
