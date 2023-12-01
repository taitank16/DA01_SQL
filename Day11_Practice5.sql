--ex1 (note: floor lam tron xuong, round(,0) se lam tron len)
select COUNTRY.Continent,
floor(avg(City.Population))
from CITY
INNER JOIN COUNTRY
on CITY.CountryCode=COUNTRY.Code
group by COUNTRY.Continent
--ex2
SELECT
round(count(distinct texts.signup_action='Confirmed')::decimal/count(texts.signup_action),2)
from emails
left join texts
on emails.email_id=texts.email_id
--ex3
SELECT age_bucket,
sum(
  case when activity_type='open'
  then time_spent = time_spent
  else time_spent=0
  end)/sum(time_spent) as open_perc
from activities
inner join age_breakdown
on activities.user_id=age_breakdown.user_id
group by age_bucket
