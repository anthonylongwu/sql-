# Every customer's last rental date

SELECT
  concat(c.first_name, " ", c.last_name) as Name, c.email as email, max(r.rental_date) as last_rental_date
FROM
  customer c, rental r 
WHERE
  r.customer_id = c.customer_id
GROUP by
  c.customer_id
;






# Revenue by month

SELECT
  left(p.payment_date,7) as Month, sum(p.amount) as Monthly_revenue
FROM
  payment p

GROUP by
  1
;

