--ex1
select name
from students
where marks>75
order by right(name,3), id
--ex2
select user_id,
concat(upper(left(name,1)), lower(right(name,length(name)-1))) as name
from users
order by user_id
--ex3
select manufacturer,
'$'||round(sum(total_sales)/1000000,0)||' million' as sales
from pharmacy_sales
group by manufacturer
order by round(sum(total_sales)/1000000,0) desc, manufacturer desc
--ex4
SELECT
extract(month from submit_date) as mth,
product_id,
round(avg(stars),2) as avg_stars
from reviews
group by product_id, mth
order by mth, product_id
--ex5
SELECT
sender_id,
count(message_id) as count_msg
from messages
where extract(month from sent_date)='8'
and extract(year from sent_date)='2022'
group by sender_id
order by count_msg desc
limit 2
--ex6
select tweet_id
from tweets
where length(content)>15
--ex7
select
count(distinct user_id) as active_users,
activity_date as day
from Activity
where activity_date between '2019-06-28' and '2019-07-27'
group by activity_date
--ex8
select
count(id) as employees_number
from employees
where
extract(month from joining_date) between 1 and 7
and extract(year from joining_date)= '2022'
--ex9
select
position ('a' in first_name) as position
from worker
where(first_name)='Amitah'
--ex10
select
substring(title,length(winery)+2,4)
from winemag_p2
