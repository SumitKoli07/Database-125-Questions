List names of all customers matched with the salespeople serving them.

select c.customer_name,s.salesperson_name from customer c join salesperson s ON c.salesperson_id=s.salesperson_id;