List the Customer table if and only if one or more of the customers in the Customer table are
located in San Jose.

select * from customer where Exists(select 1 from customer where city ='san jose');