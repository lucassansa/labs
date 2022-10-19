use sakila;

select count(distinct(last_name)) 
from actor;

select count(distinct(language_id)) 
from language;

select count(*) from film
where rating = 'PG-13';

select * from film
where release_year = '2006'
order by length desc
limit 10;

select datediff(max(rental_date),min(rental_date)) 
from rental;

select *, date_format(rental_date, '%M') as month , date_format(rental_date, '%W') as weekday
from rental
limit 20;

select *, case when date_format(rental_date, '%W') in ('Saturday', 'Sunday')
          then 'weekend'
          else 'workday' end as day_type
from rental;

select date(max(rental_date))- INTERVAL 30 DAY, date(max(rental_date))
from rental;

select count(*)
from rental
where date(rental_date) between date('2006-01-15') and date('2006-02-14')
​