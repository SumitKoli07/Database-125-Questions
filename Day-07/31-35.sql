 Find all salespeople whose name starts with ‘P’ and the fourth character is ‘l’.

select * FROM SALESPEOPLE where sname LIKE 'P__l%';
 Write a query that uses a subquery to obtain all orders for the customer named Cisneros. Assume you do not know his customer number.

SELECT * from orders WHERE cnum=(select cnum FROM CUSTOMERS where cname='Cisneros');

Find the largest orders for Serres and Rifkin.


select MAX(amt) FROM orders where snum in(select snum FROM salespeople where sname IN('Serres','Rifkin')) group BY snum;


 Extract the Salespeople table in the following order : SNUM,SNAME,COMMISSION,CITY.


SELECT SNUM,sname,comm FROM salespeople ORDER by SNUM;


Select all customers whose names fall in between ‘A’and ‘G’ alphabetical range.


select * FROM customers where cname >= 'A'AND cname <'G';
