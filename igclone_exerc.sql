SELECT user_name, created_at FROM users
ORDER BY created_at ASC LIMIT 5;

SELECT DAYNAME(created_at) AS week_day, 
COUNT(*) AS numbers
FROM users 
GROUP BY week_day
ORDER BY numbers DESC;

SELECT user_name FROM users
LEFT JOIN photos
ON user_id = users.id
WHERE image_url IS NULL;

SELECT user_name, photos.id, image_url, COUNT(*) AS counting_likes
FROM photos
JOIN likes
ON photo_id = photos.id
JOIN users
ON photos.user_id = users.id
GROUP BY photos.id
ORDER BY counting_likes DESC LIMIT 1;