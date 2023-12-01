--ex1
select COUNTRY.Continent
from CITY
INNER JOIN COUNTRY
on CITY.CountryCode=COUNTRY.Code
group by COUNTRY.Continent
