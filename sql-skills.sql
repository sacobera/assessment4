-- ARTIST TABLE


INSERT INTO artist
values( 0, 'Jonas Brothers')
INSERT INTO artist
values( 300, 'John Meyer')
INSERT INTO artist
values( 301, 'Doja Cat')


select * 
from artist 
order by name asc limit 5;


--Employee Table

select first_name, last_name 
from employee 
WHERE city ='Calgary';

select * 
from employee 
where reports_to = 2;

select count(*) 
from employee 
where city= 'Lethbridge';

--INVOICE TABLE 

select count(*) 
from invoice 
where billing_country ='USA';

select max(total) 
from invoice;

select min(total) 
from invoice;

select count(*) 
from invoice
where total < 5;

select sum(total) 
from invoice

--JOIN QUERIES

SELECT *
FROM invoice i
JOIN invoice_line il 
ON il.invoice_id = i.invoice_id
WHERE il.unit_price > 0.99;

SELECT i.invoice_date, c.first_name, c.last_name, i.total
FROM invoice i
JOIN customer c 
ON i.customer_id = c.customer_id;

SELECT c.first_name, c.last_name, e.first_name, e.last_name
FROM customer c
JOIN employee e 
ON c.support_rep_id = e.employee_id;


SELECT al.title, ar.name
FROM album al
JOIN artist ar 
ON al.artist_id = ar.artist_id;
