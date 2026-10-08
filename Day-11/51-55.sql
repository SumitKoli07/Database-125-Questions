51.Find all orders placed by customers in London.

select o.* from orders o join customers c on o.cnum=c.cnum where c.city='London';

52.Find the names of all customers who have placed an order.
select distinct c.cname from customers c join orders o on c.cnum=o.cnum;

53.Find the total amount of orders placed by each salesperson.
select s.sname,sum(o.amt)as total from salespeople s join orders o on s.snum=o.snum group by s.snum,s.sname;

54.Find the average order amount for each salesperson.

select s.sname,avg(o.amt)as average from salespeople s join orders o on s.snum=o.snum group by s.snum,s.sname;

55.Find the salesperson who has the highest total order amount.
select s.sname,sum(o.amt)as total from salespeople s join orders o on s.snum=o.snum group by s.snum,s.sname order by total desc limit 1;