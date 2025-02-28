use sakila;

/* 1.find customers who have rented more than 10 films*/

select * from customer;
select * from rental;
select * from film;
select * from customer where customer_id in ( select customer_id from rental group by customer_id having count(*)>10);
select customer_id,first_name,last_name from customer where  customer_id in (select customer_id from rental group by rental_id having count(customer_id)>10);

/* 2.find film with a rental duration greater than the average rental duration */

select * from film where rental_duration >(select avg (rental_duration) from film);

/* 3.find customers who have rented all films in the 'action' category */

select * from customer where not exists(select* from film_category join film on film_category.film_id=film.film_id join category on
 film_category.category_id=category.category_id where category.name='Action' and film.film_id not in (select inventory.film_id from inventory
 join rental on inventory.inventory_id=rental.inventory_id));
 
 /* 4. find films that not have been rented by customers from the 'USA' */
 
 select* from film where film_id not in(select inventory.film_id from inventory join rental on inventory.inventory_id=rental.inventory_id
 join customer on rental.customer_id=customer.customer_id where customer.country='united states');
 
 /* 5. find the top 5 categories by number of films rented */
 
 select category.name,count(*) as num_film_rented from category join film_category on category.category_id=film_category.category_id
 join film on film_category_id=film.film_id join inventory on film.film_id=inventory.film_id join rental on 
 inventory.inventory_id=rental.inventory_id group by category.name order by num_films_rented desc limit 5;
 
 
 
 ############################################################################################
 #constraints
 use akshay;
 create table student(id int auto_increment,
 namee char(30) not null,
 doj date,
 mark int,
 check (mark>=45),
 statuss char(30) default 'Pass',
 primary key(id)) ;
 select * from student;
 insert into student(namee,doj,mark) values('amaan','2024-06-02',45);
 
 create table team(playernumber int primary key,
 name char(25) not null,
 doj date,
 points int,
 check (points>=50),
 satus char(30) default 'qualified');
 
 select * from team;
 
 insert into team (playernumber,name,doj,points)values 
 (9,'lewendowski','2025-01-01',67);


