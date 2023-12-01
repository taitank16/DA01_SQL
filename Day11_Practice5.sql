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
