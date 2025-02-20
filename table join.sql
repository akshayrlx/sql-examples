create table customers(customer_id int,customer_name varchar(30),country varcharacter(20));
insert into customers values(
1,	"John"	,"USA"),
(2,  "mary" , "canada"),
(3,	"Paul"	,"UK"),
(4,	"Anna"	,"Germany"),
(5,	"Peter"	,"USA");
select * from customers;


create table orders (Order_ID int,Customer_ID int,Order_Date date,Total_Amount float);
insert into orders values(
101,	1,	"2025-02-01"	,250.50),
(102,	2,	"2025-02-05"	,120.00),
(103,	3,	"2025-02-07"	,350.00),
(104,	1,	"2025-02-10"	,190.00),
(105,	5,	"2025-02-12"	,180.75);
insert into orders values(105,	6,	"2025-02-16"	,190.75);
select * from orders;

select * from customers join orders  on customers.customer_id=orders.Customer_ID;
select * from customers inner join orders  on customers.customer_id=orders.Customer_ID;
select * from customers left join orders  on customers.customer_id=orders.Customer_ID;
select * from customers right join orders  on customers.customer_id=orders.Customer_ID;
select * from customers cross join orders  on customers.customer_id=orders.Customer_ID;
select * from customers full  join orders;

select count(customer_name),country   from customers group by country order by count(customer_name) desc;
use akshay;
select * from `country-code`;
select * from zomato;
select * from `country-code` full join  zomato;
select * from `country-code` inner join zomato  on `country-code`.`Country Code`=zomato.`Country Code`;
select * from `country-code` left join zomato  on `country-code`.`Country Code`=zomato.`Country Code`;
select * from `country-code` right join zomato  on `country-code`.`Country Code`=zomato.`Country Code`;
select * from `country-code` cross join zomato  on `country-code`.`Country Code`=zomato.`Country Code`;

select * from `country-code` left join zomato  on `country-code`.`Country Code`=zomato.`Country Code`
union
select * from `country-code` right join zomato  on `country-code`.`Country Code`=zomato.`Country Code`;

select * from `country-code` left join zomato  on `country-code`.`Country Code`=zomato.`Country Code`
union all
select * from `country-code` right join zomato  on `country-code`.`Country Code`=zomato.`Country Code`;
