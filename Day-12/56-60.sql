56.Display all customers along with their salesperson names.
select c.cname,s.sname from customers c join salespeople s on c.snum=s.snum;

57.Find customers who have the same rating.
select c1.cname ,c2.cname from customers c1 join customers c2 on c1.rating=c2.rating and c1.cnum<c2.cnum;

58.Find the total number of orders placed by each customer.
select c.cname,count(o.onum)as total_number from customers c left join orders o on c.cnum=o.cnum group by c.cnum,c.cname;


59.Find customers who have not placed any orders.
select c.cname from customers c left join orders o on c.cnum=o.cnum where o.onum is null;

60.Find the salesperson names and the total commission earned on their orders.
select s.sname, sum(o.amt*s.comm) from salespeople s join orders o on s.snum=o.snum group by s.sname;



