-- Data analysis 

-- types of bikes used by riders
SELECT member_casual, rideable_type,count(*) AS total_trips 
FROM `Cyclist.cleaned_data` 
GROUP BY member_casual,rideable_type
ORDER BY member_casual,total_trips DESC;

-- no of trips each month
SELECT month,member_casual, COUNT(*) AS trips_per_month
FROM `Cyclist.cleaned_data`
GROUP BY month,member_casual
ORDER BY member_casual;

-- no of trips per week
SELECT day_of_week,member_casual, COUNT(*) AS trips_per_month
FROM `Cyclist.cleaned_data`
GROUP BY day_of_week,member_casual
ORDER BY member_casual;

-- no of trips per hour 
SELECT member_casual, 
EXTRACT(HOUR FROM started_at) AS hour_of_day, 
COUNT(*) AS total_trips
FROM `Cyclist.cleaned_data`
GROUP BY member_casual,hour_of_day
ORDER BY member_casual;

-- average ride length per month
SELECT month, member_casual, AVG(ride_length_in_mins) AS avg_ride_length
FROM `Cyclist.cleaned_data`
GROUP BY month,member_casual;

-- average ride_length per day of week
SELECT day_of_week, member_casual, AVG(ride_length_in_mins) AS avg_ride_length
FROM `Cyclist.cleaned_data`
GROUP BY day_of_week,member_casual;

-- average ride_length per hour
SELECT member_casual, 
EXTRACT(HOUR FROM started_at) AS hour_of_day, 
AVG(ride_length_in_mins) AS avg_ride_length
FROM `Cyclist.cleaned_data`
GROUP BY member_casual,hour_of_day
ORDER BY member_casual;

-- start station locations

SELECT start_station_name,
member_casual,
AVG(start_lat) AS start_lat,
AVG(start_lng) AS start_lng,
COUNT(*) as total_trips
FROM `Cyclist.cleaned_data`
GROUP BY start_station_name,member_casual;

-- end station locations
SELECT end_station_name,
member_casual,
AVG(end_lat) AS end_lat,
AVG(end_lng) AS end_lng,
COUNT(*) as total_trips
FROM `Cyclist.cleaned_data`
GROUP BY end_station_name,member_casual;
