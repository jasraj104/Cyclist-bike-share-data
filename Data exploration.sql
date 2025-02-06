-- Count the TOtal no of Records in the Combined Table
SELECT COUNT(*) AS total_records from `Cyclist.data`;

-- COUNT THE NULL Values from all the columns/attributes
select COUNT(*)-COUNT(ride_id) AS ride_id,
COUNT(*)-COUNT(rideable_type) AS rideable_type,
COUNT(*)-COUNT(started_at) AS started_at,
COUNT(*)-COUNT(ended_at) AS ended_at,
COUNT(*)-COUNT(start_station_name) AS start_station_name,
COUNT(*)-COUNT(start_station_id) AS start_station_id,
COUNT(*)-COUNT(end_station_name) AS end_station_name,
COUNT(*)-COUNT(end_station_id) AS end_station_id,
COUNT(*)-COUNT(start_lat) AS start_lat,
COUNT(*)-COUNT(start_lng) AS start_lng,
COUNT(*)-COUNT(end_lng) AS end_lng,
COUNT(*)-COUNT(member_casual) AS member_casual
from `Cyclist.data` ;

--Find the data types of all the columns

SELECT column_name,data_type 
from `Cyclist`.INFORMATION_SCHEMA.COLUMNS
where table_name = 'data'; 

-- Check for duplicate rows

SELECT COUNT(ride_id) - COUNT(DISTINCT ride_id) AS duplicate_rows
FROM `Cyclist.data`;

-- ride id (length , count) -length 16 for all id uniform

SELECT LENGTH(ride_id) AS length_ride_id, COUNT(ride_id) AS no_of_rows
FROM `Cyclist.data`
GROUP BY length_ride_id;

-- rideable_type - 3 unique types of bikes and no of trips for each

SELECT DISTINCT(rideable_type) ,COUNT(rideable_type) AS no_of_trips
from `Cyclist.data`
GROUP BY rideable_type;

--check ride duration ie. longer than a day or less than a minute
--SELECT COUNT(*) FROM
SELECT ride_id,started_at,ended_at
FROM `Cyclist.data`
WHERE 
TIMESTAMP_DIFF(ended_at,started_at,MINUTE) <= 1 OR
TIMESTAMP_DIFF(ended_at,started_at,MINUTE) >= 1440 ;
-- the end time is behind the start time
-- TIMESTAMP is in YYYY-MM-DD hh:mm:ss UTC format 


-- name & id of start_station and end_station

SELECT DISTINCT(start_station_name),COUNT(*) AS count
from `Cyclist.data`
GROUP BY start_station_name;   -- TOTAL 1675 and null - 833064

SELECT DISTINCT(end_station_name),COUNT(*) AS count
from `Cyclist.data`
GROUP BY end_station_name; -- Total 1693 and null 892724

SELECT DISTINCT start_station_id, end_station_id
FROM `Cyclist.data`
WHERE start_station_id IS NOT NULL AND
end_station_id IS NOT NULL;

-- null lat and lng of both start and end  -- 5858 null count
SELECT COUNT(ride_id) from `Cyclist.data`
WHERE
start_lat IS NULL OR
start_lng IS NULL OR
end_lat IS NULL OR
end_lng IS NULL;


-- member casual count for the whole year

SELECT member_casual, COUNT(*) as membership_count
FROM `Cyclist.data`
GROUP BY member_casual;
