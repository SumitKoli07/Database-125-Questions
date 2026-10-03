Find all orders with amounts smaller than any amount for a customer in San Jose.
select * from orders where amt < ANY(select amt from orders where cnum in (select cnum from customers where city='san jose'));

Find all orders with above average amounts for their customers.

select * from orders o where amt >(select avg(o1.amt) from orders o1 where o1.cnum=o.cnum);


Write a query that selects the highest rating in each city.

select city,max(rating) as highest_rating from customers group by city;


Count the customers with ratings above San Jose’s average.

select count(*) from customers where rating >(select avg(rating) from customers where city='san jose');
