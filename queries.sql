-- write your queries here
SELECt * FROM owners LEFT JOIN vehicles ON owners.id = vehicles.owner_id;

SELECT first_name, last_name, COUNT(*) FROM vehicles 
JOIN owners ON vehicles.owner_id = owners.id GROUP BY owners.id ORDER BY first_name;

SELECT first_name, last_name, ROUND(AVG(price)) as avg_price,  COUNT(*) as num_of_cars FROM owners o
JOIN vehicles v ON o.id = v.owner_id
GROUP BY (first_name, last_name) HAVING COUNT(*) > 1 AND ROUND(AVG(price)) > 10000
ORDER BY first_name desc;