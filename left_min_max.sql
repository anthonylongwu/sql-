LEFT()
MIN()
MAX()
#How many rentals we had each month

SELECT
  left(r.rental_date, 7), count(r.rental_id)
FROM
  rental r  

GROUP BY
  1
ORDER BY
  2 desc
;

# SELECT left("2006-02-14 15:16:03", 7);

#finding min and max
SELECT
  f.title as "Film Title", max(r.rental_date) as "Last Rental Date", min(r.rental_date) as "First Rental Date"
FROM
  rental r, inventory i, film f 
  WHERE
    r.inventory_id = i.inventory_id
  AND 
  i.film_id = f.film_id
GROUP BY
  f.film_id
;


