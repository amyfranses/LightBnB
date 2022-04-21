SELECT reservations.id AS id, properties.title AS title, reservations.start_date AS start_date, properties.cost_per_night AS cost_per_night, AVG(property_reviews.rating) AS rating
FROM reservations
JOIN properties ON reservations.property_id = properties.id
JOIN property_reviews ON properties.id = property_reviews.property_id
WHERE reservations.guest_id = 1
GROUP BY properties.id, reservations.id
ORDER BY reservations.start_date
LIMIT 10;


-- SELECT reservations.id AS id, properties.title AS title, reservations.start_date AS start_date, properties.cost_per_night AS cost_per_night, AVG(property_reviews.rating) AS rating
-- FROM reservations
-- JOIN property_reviews ON reservations.id = property_reviews.reservation_id
-- JOIN properties ON properties.id = owner_id
-- JOIN users ON users.id = reservations.guest_id
-- WHERE users.email =  'tristanjacobs@gmail.com'
-- GROUP BY reservations.id, title, start_date, cost_per_night