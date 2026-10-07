46. Write a query that produces all pairs of salespeople with themselves as well as duplicate rows with the order reversed.

select s1.sname,s2.sname from salespeople s1 cross join salespeople s2;

47. Find all salespeople that are located in either Barcelona or London.


select * from salespeople where city in('Barcelona','London');

48. Find all salespeople with only one customer.

select s.sname,count(c.cnum) as customers from salespeople s join customers c on s.snum=c.snum group by s.snum,s.sname having count(c.cnum)=1;

49. Write a query that joins the Customer table to itself to find all pairs of customers served by a single salesperson.

select c1.cname,c2.cname from customers c1 join customers c2 on c1.snum=c2.snum where c1.cnum<c2.cnum;

50. Write a query that will give you all orders for more than $1000.00.


select * from orders where amt>1000;
