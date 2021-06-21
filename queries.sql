-- write your queries here

SELECT * 
FROM owners o 
LEFT JOIN vehicles v 
ON o.id = v.owner_id; 

SELECT first_name, last_name, COUNT(owner_id)
FROM owners o 
JOIN vehicles v ON o.id = v.owner_id
GROUP BY o.id 
ORDER BY first_name

SELECT first_name, last_name, ROUND(AVG(price)) AS avg_price, COUNT(owner_id)
FROM owners o 
JOIN vehicles v ON o.id = v.owner_id
GROUP BY o.id 
HAVING COUNT(owner_id) > 1 AND ROUND(AVG(price)) > 10000
ORDER BY first_name DESC;

