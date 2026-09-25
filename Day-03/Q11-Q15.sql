11. Match salespeople to customers according to what city they lived in.
select c.city ,s.city from customers c join salespeople s on c.city = s.city;

12. Find the largest order taken by each salesperson.
select amt from orders o  where amt =(select max(o1.amt) from orders o1 where o1.snum=o.snum);

13. Find customers in San Jose who have a rating above 200.
select cname from customers where city ='San Jose'and rating >200;

14. List the names and commissions of all salespeople in London.
select sname,comm from salespeople where city='London';

15. List all the orders of salesperson Motika from the Orders table.
select o.onum from orders o where snum=(select s.snum from salespeople s    
where sname='motika');
