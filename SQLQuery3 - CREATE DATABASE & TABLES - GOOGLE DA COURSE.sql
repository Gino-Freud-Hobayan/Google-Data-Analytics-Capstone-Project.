
---------------------------------------------------------------
-- GOOGLE DA COURSE CAPSTONE PROJECT: CYCLISTIC BIKE-SHARE using Microsoft SQL
---------------------------------------------------------------



CREATE DATABASE Bikeshare_database;


-- Specifying the database we want to use
USE Bikeshare_database;


-- Create table that will hold all the trips data
-- six decimal places for longitude and latitude for accuracy.
CREATE TABLE BikeShare_table
(
	pk_ride_id VARCHAR(16) PRIMARY KEY NOT NULL,
	rideable_type VARCHAR(13),
	started_at DATETIME,
	ended_at DATETIME,
	start_station_name VARCHAR(100),
	start_station_id VARCHAR(50),
	end_station_name VARCHAR(100),
	end_station_id VARCHAR(50),
	start_lat DECIMAL(8,6),
	start_lng DECIMAL(9,6),
	end_lat DECIMAL(8,6),
	end_lng DECIMAL(9,6),
	member_casual VARCHAR(6)
);



--- Insert all the data from the .csv file into our database table 'BikeShare_table' for each month

-- July 2022
BULK INSERT BikeShare_table
FROM "C:\Users\GINO\Desktop\Google Capstone\Cyclistic - bike share data\202207-divvy-tripdata.csv"
WITH (
		FORMAT = 'CSV',
		FIELDTERMINATOR = ',',
		ROWTERMINATOR = '\n',
		FIRSTROW = 2			
	);


BULK INSERT BikeShare_table
FROM "C:\Users\GINO\Desktop\Google Capstone\Cyclistic - bike share data\202208-divvy-tripdata.csv"
WITH (
		FORMAT = 'CSV',
		FIELDTERMINATOR = ',',
		ROWTERMINATOR = '\n',
		FIRSTROW = 2			
	);


BULK INSERT BikeShare_table
FROM "C:\Users\GINO\Desktop\Google Capstone\Cyclistic - bike share data\202209-divvy-publictripdata.csv"
WITH (
		FORMAT = 'CSV',
		FIELDTERMINATOR = ',',
		ROWTERMINATOR = '\n',
		FIRSTROW = 2			
	);


BULK INSERT BikeShare_table
FROM "C:\Users\GINO\Desktop\Google Capstone\Cyclistic - bike share data\202210-divvy-tripdata.csv"
WITH (
		FORMAT = 'CSV',
		FIELDTERMINATOR = ',',
		ROWTERMINATOR = '\n',
		FIRSTROW = 2			
	);


BULK INSERT BikeShare_table
FROM "C:\Users\GINO\Desktop\Google Capstone\Cyclistic - bike share data\202211-divvy-tripdata.csv"
WITH (
		FORMAT = 'CSV',
		FIELDTERMINATOR = ',',
		ROWTERMINATOR = '\n',
		FIRSTROW = 2			
	);


BULK INSERT BikeShare_table
FROM "C:\Users\GINO\Desktop\Google Capstone\Cyclistic - bike share data\202212-divvy-tripdata.csv"
WITH (
		FORMAT = 'CSV',
		FIELDTERMINATOR = ',',
		ROWTERMINATOR = '\n',
		FIRSTROW = 2			
	);


BULK INSERT BikeShare_table
FROM "C:\Users\GINO\Desktop\Google Capstone\Cyclistic - bike share data\202301-divvy-tripdata.csv"
WITH (
		FORMAT = 'CSV',
		FIELDTERMINATOR = ',',
		ROWTERMINATOR = '\n',
		FIRSTROW = 2			
	);


BULK INSERT BikeShare_table
FROM "C:\Users\GINO\Desktop\Google Capstone\Cyclistic - bike share data\202302-divvy-tripdata.csv"
WITH (
		FORMAT = 'CSV',
		FIELDTERMINATOR = ',',
		ROWTERMINATOR = '\n',
		FIRSTROW = 2			
	);


BULK INSERT BikeShare_table
FROM "C:\Users\GINO\Desktop\Google Capstone\Cyclistic - bike share data\202303-divvy-tripdata.csv"
WITH (
		FORMAT = 'CSV',
		FIELDTERMINATOR = ',',
		ROWTERMINATOR = '\n',
		FIRSTROW = 2			
	);


BULK INSERT BikeShare_table
FROM "C:\Users\GINO\Desktop\Google Capstone\Cyclistic - bike share data\202304-divvy-tripdata.csv"
WITH (
		FORMAT = 'CSV',
		FIELDTERMINATOR = ',',
		ROWTERMINATOR = '\n',
		FIRSTROW = 2			
	);


BULK INSERT BikeShare_table
FROM "C:\Users\GINO\Desktop\Google Capstone\Cyclistic - bike share data\202305-divvy-tripdata.csv"
WITH (
		FORMAT = 'CSV',
		FIELDTERMINATOR = ',',
		ROWTERMINATOR = '\n',
		FIRSTROW = 2			
	);


-- JUNE 2023
BULK INSERT BikeShare_table
FROM "C:\Users\GINO\Desktop\Google Capstone\Cyclistic - bike share data\202306-divvy-tripdata.csv"
WITH (
		FORMAT = 'CSV',
		FIELDTERMINATOR = ',',
		ROWTERMINATOR = '\n',
		FIRSTROW = 2			
	);



-- Count the number of records to check whether we imported the right number of records from the 12 csv files.
-- It should be 57,794,444

SELECT
	COUNT(*) AS num_of_records
FROM BikeShare_table;





-- CREATED A BACK UP OF DATABASE
-- https://www.youtube.com/watch?v=lEsTwrETh_E






-- GET AN OVERVIEW OF THE DATA

SELECT TOP 50
	*
FROM 
	BikeShare_table;




---------------------------------------------------------------
-- DATA CLEANING
---------------------------------------------------------------




SELECT 
	MAX(pk_ride_id) AS max_length, 
	MIN(pk_ride_id) AS min_length
FROM
	BikeShare_table






-- CHECK FOR DUPLICATES

SELECT
	pk_ride_id,
	COUNT(pk_ride_id) AS count_of_ride_id
FROM 
	BikeShare_table
GROUP BY 
	pk_ride_id
HAVING COUNT(pk_ride_id) > 1;


-- No duplicates on pk_ride_id









-- CHECK FOR NULL VALUES

-- Check all our columns for N/A or NULL values.
SELECT
	COUNT (*) AS total_records,
	COUNT (CASE WHEN pk_ride_id IS NULL OR pk_ride_id = 'NA' OR pk_ride_id = 'N/A' OR LEN(pk_ride_id) = 0 THEN 1 END) AS pk_ride_id,
	COUNT (CASE WHEN rideable_type IS NULL OR rideable_type = 'NA' OR rideable_type = 'N/A' OR LEN(rideable_type) = 0 THEN 1 END) AS rideable_type,
	COUNT (CASE WHEN started_at IS NULL OR ISDATE(started_at) = 0 THEN 1 END) AS started_at,
	COUNT (CASE WHEN ended_at IS NULL OR ISDATE(ended_at) = 0  THEN 1 END) AS ended_at,
	COUNT (CASE WHEN start_station_name IS NULL OR start_station_name = 'NA' OR start_station_name = 'N/A' OR LEN(start_station_name) = 0 THEN 1 END) AS start_station_name,
	COUNT (CASE WHEN start_station_id IS NULL OR start_station_id = 'NA' OR start_station_id = 'N/A' OR LEN(start_station_id) = 0 THEN 1 END) AS start_station_id,
	COUNT (CASE WHEN end_station_name IS NULL OR end_station_name = 'NA' OR end_station_name = 'N/A' OR LEN(end_station_name) = 0  THEN 1 END) AS end_station_name,
	COUNT (CASE WHEN end_station_id IS NULL OR end_station_id = 'NA' OR end_station_id = 'N/A' OR LEN(end_station_id) = 0 THEN 1 END) AS end_station_id,
	COUNT (CASE WHEN start_lat IS NULL THEN 1 END) AS start_lat,
	COUNT (CASE WHEN start_lng IS NULL THEN 1 END) AS start_lng,
	COUNT (CASE WHEN end_lat IS NULL THEN 1 END) AS end_lat,
	COUNT (CASE WHEN end_lng IS NULL THEN 1 END) AS end_lng,
	COUNT (CASE WHEN member_casual IS NULL OR member_casual = 'NA' OR member_casual = 'N/A' OR LEN(member_casual) = 0 THEN 1 END) AS member_casual
FROM BikeShare_table;


-- Some columns have null values: start_station_name, start_station_id, end_station_name, end_station_id, end_lat, end_lng
-- We will have to deal with these null values as they will affect our data analysis later.






-- Remove the leading and trailing spaces for fields with string data types.









-- FILL IN THE NULL/MISSING VALUES








-- ADDRESS OUTLIERS

-- First, we must create a column that will hold the value of the diff between the started_at datetime and the ended_at datetime. 



-- Add a ride_length column that will contain the ride duration.
ALTER TABLE tblTrips
ADD ride_length INT;

-- Set the ride length values to the difference between the started_at and ended_at columns in seconds.
UPDATE BikeShare_table
SET ride_length = DATEDIFF(second, started_at, ended_at);



-- Now we'll check our calculated values for negative ride length.
SELECT *
FROM BikeShare_table
WHERE ride_length < 0;



/* 
Since there are rides with negative ride durations, we will assume that the started_at and ended_at datetimes are swapped. 
We will then swap these two datetimes by creating a temporary column that will hold started_at values and update each column properly. 
Recalculate the swapped dates so that we do not have any negative ride durations. 
And finally, delete the temporary column we created. 
/* 



