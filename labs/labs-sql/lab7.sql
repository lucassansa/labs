select distinct(last_name) from actor;

select last_name from actor
group by last_name
having count(*)>1;

select staff_id, count(*) as rental_processed from rental
group by staff_id;

select release_year, count(*) as film_per_year from film
group by release_year;

select rating, count(*) as film_per_rating from film
group by rating;

select length, rating, round(avg(length),2) as avg_length from film
group by rating;

select length, rating, round(avg(length),2) as avg_length from film
group by rating
having avg_length>120;