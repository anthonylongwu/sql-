# number of distinct films rented each month

SELECT
  left(r.rental_date, 7) as month, count(r.rental_id) as total_rentals, count(distinct i.film_id) as unique_films_rented, count(r.rental_id)/count( distinct i.film_id) as rentals_per_film
FROM
  rental r, inventory i 
WHERE
  r.inventory_id = i.inventory_id
GROUP BY
  1
;