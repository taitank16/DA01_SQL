-- exercise 1
select name from CITY
where countrycode = 'USA'
AND population >120000
-- exercise 2
select * from CITY
where countrycode = 'JPN'
-- exercise 3
select CITY, STATE from STATION
-- exercise 4
select distinct CITY from STATION
where (CITY LIKE 'a%' or CITY LIKE 'e%' or CITY LIKE 'u%' or CITY LIKE 'o%' or CITY LIKE 'i%')
-- exercise 5
select distinct CITY from STATION
where (CITY LIKE '%a' or CITY LIKE '%e' or CITY LIKE '%u' or CITY LIKE '%o' or CITY LIKE '%i')
-- exercise 6
select distinct city
from station
where not (city like 'u%' or city like 'e%' or city like 'o%' or city like 'a%' or city like 'i%')
-- exercise 7
select name
from employee
order by name
-- exercise 8
select name
from employee
where (salary > 2000)
and months <10
order by employee_id
-- exercie 9
select product_id
from products
where low_fats = 'Y'
and recyclable = 'Y'
-- exercise 10 (note: not referred id=2 sẽ sót null)
select name
from customer
where (referee_id != 2) or (referee_id is null)
-- exercise 11
select name, population, area
from world
where (area >= 3000000) or (population >= 25000000)
-- exercise 12
select distinct author_id as id
from views
where (viewer_id = author_id)
order by author_id
-- exercise 13
select DISTINCT part
from parts_assembly
where finish_date is null
-- exercise 14
select * from lyft_drivers
where (yearly_salary <= 30000) or (yearly_salary >= 70000)
-- exercise 15
select advertising_channel from uber_advertising
where (money_spent > 100000) and (year = 2019)

