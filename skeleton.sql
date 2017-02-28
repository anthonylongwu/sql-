select count(title), rental_rate
from film
group by rental_rate
;