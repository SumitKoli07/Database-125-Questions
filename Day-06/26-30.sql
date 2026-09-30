Select all customers with a rating above 200.00.

Select * from customers where rating > 200.00;


Count the number of salespeople currently listing orders in the Orders table.

select count(distinct snum) from orders;


Write a query that produces all customers serviced by salespeople with a commission above 12%. Output the customer’s name and the salesperson’s rate of commission.

seLect cname, comm from customers join salespeople on customers.snum = salespeople.snum where comm > 0.12;


Find salespeople who have multiple customers.

select snum from cusTomers group by snum having count(*) > 1;


Find salespeople with customers located in their city.

select salespeople.sname from salespeople jOin customers on Salespeople.city = customers.city;
