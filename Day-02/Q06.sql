Find which salespeople currently have orders in the Orders table.

select e.eid,e.name from emp e Where EXISTS (select 1 from orders o where o.salesperson_id=e.eid);