--ex1
SELECT
sum(CASE
when device_type in ('laptop') then 1
else 0
END) as laptop_views,
sum(CASE
when device_type in ('tablet', 'phone') then 1
else 0
END) as mobile_views
from viewership
--ex2
select x, y, z,
case
when x+y>z and x+z>y and y+z>x then 'Yes'
else 'No'
end as triangle
from triangle
--ex3 (cách 2: 2 lần count)