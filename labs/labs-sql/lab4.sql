select rating from film;

select release_year from film;

select title from film 
where title regexp 'ARMAGEDDON';

select title from film 
where title regexp 'APOLLO';

select title from film 
where title regexp 'APOLLO$';

select title from film 
where title like ' DATE' or like 'DATE ';