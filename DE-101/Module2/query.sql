select city, round(sum(profit))
from orders o 
group by city 
order by 2;

select region, round(sum(profit))
from orders o 
group by region 
order by 2;

select person
, round(sum(profit)) as profit
, round(sum(sales)) as sales
, round(sum(discount)) as discount   
from orders o 
join people p
on o.region = p.region 
group by person;

select category
, round(sum(profit)) as profit
, round(sum(sales)) as sales
, round(sum(discount)) as discount
, count(returned) as order_return
from orders o 
join returns r 
on o.order_id = r.order_id 
where r.returned like '%es'
group by category;

select person 
, count(returned) as order_return
from people p 
join orders o 
on o.region = p.region
join returns r
on o.order_id = r.order_id 
group by person;





