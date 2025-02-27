use sakila;

/* 1.find customers who have rented more than 10 films*/

select * from customer;
select * from rental;
select * from film;
select * from customer where customer_id in ( select customer_id from rental group by customer_id having count(*)>10);
select customer_id,first_name,last_name from customer where  customer_id in (select customer_id from rental group by rental_id having count(customer_id)>10);

select * from film where rental_duration >(select avg (rental_duration) from film);
