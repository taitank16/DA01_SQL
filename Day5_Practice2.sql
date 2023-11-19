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
select
distinct user_id,
date(max(post_date))-date(min(post_date)) as days_count
FROM posts
where post_date between '2020-12-31' and '2022-01-01'
group by user_id
having count(post_id)>=2
--ex7
SELECT card_name,
(max(issued_amount)-min(issued_amount)) as difference
FROM monthly_cards_issued
group by card_name
order by difference desc
--ex8
SELECT manufacturer,
abs(sum(total_sales-cogs)) as total_loss,
count(drug) as drug_count
FROM pharmacy_sales
where (total_sales-cogs)<=0
group by manufacturer
order by total_loss desc
--ex9
select * from cinema
where
description not in ('boring')
and id%2=1
order by rating desc
--ex10 (note: tại sao ko có group by thì teacher_id chỉ hiện 1 thay vì 1 và 2?)
select
teacher_id,
count(distinct(subject_id)) as cnt
from teacher
group by teacher_id
--ex11
select
user_id,
count(follower_id) as followers_count
from followers
group by user_id
order by user_id
--ex12
select class
from courses
group by class
having count(class)>=5

