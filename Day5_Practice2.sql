-- ex1
select distinct city
from station
where id%2=0
-- ex2 (note: cho mình hỏi là có cách khác sử dụng GROUP BY không ạ?)
select
count(city) - count(distinct city)
from station
-- ex4
SELECT
round(cast(SUM(order_occurrences*item_count)/sum(order_occurrences) as decimal),1)
FROM items_per_order
-- ex5
SELECT candidate_id
FROM candidates
where skill in ('Python','Tableau','PostgreSQL')
group by candidate_id
having count(skill)=3
order by candidate_id asc
--ex6

--ex7
SELECT card_name,
(max(issued_amount)-min(issued_amount)) as difference
FROM monthly_cards_issued
group by card_name
order by difference desc
--ex8

