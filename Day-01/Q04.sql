Find the largest order taken by each salesperson on each date.

select snum ,odate,max(amt) from orders group by snum,odate;