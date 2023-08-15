# Google Data Analytics Professional Certificate - Capstone Project 

## By: Gino Freud D. Hobayan  (https://linktr.ee/ginohobayan)

<img width="923" alt="Google DA - professional cert" src="https://github.com/Gino-Freud-Hobayan/Google-Data-Analytics-Capstone_Gino/assets/117270964/2be43210-428b-4650-a52e-4a35b0464dce">


<br><br><br>

## **Case Study: How Does a Bike-Share Navigate Speedy Success?**

<img width="497" alt="Case Study - Bike share" src="https://github.com/Gino-Freud-Hobayan/Google-DA-Capstone_Gino/assets/117270964/41bb1109-ce24-4b57-b176-279d297ba30d">

This is my Capstone Project for the [Google Data Analytics Professional Certificate](https://www.coursera.org/professional-certificates/google-data-analytics)


<br><br>


### **In this Scenario:**

I am a junior data analyst working in the marketing analyst team at Cyclistic, a bike-share company in Chicago. 

The director of marketing believes the company’s future success depends on maximizing the number of annual memberships. 

Therefore, my team wants to understand how casual riders and annual members use Cyclistic bikes differently. 

From these insights, my team will design a new marketing strategy to convert casual riders into annual members. 
But first, Cyclistic executives must approve my recommendations, so they must be backed up with compelling data insights and professional data
visualizations.

<br>

The six phases of the data analysis process I learned from the course:
![6 phases - Googla DA](https://github.com/Gino-Freud-Hobayan/Google-Data-Analytics-Capstone_Gino/assets/117270964/f9c7d03b-f6d0-408f-bf37-07c007ef790d)

<br><br><br>


# 1. ASK

#### In the Ask step, we define the problem we're solving and make sure that we fully understand stakeholder expectations.

- Define the problem we’re trying to solve
- Make sure that we fully understand the stakeholder’s expectations
- Take a step back and see the whole situation in context


<br><br>

## **About the company** 

In 2016, Cyclistic launched a successful bike-share offering. 
Since then, the program has grown to a fleet of 5,824 bicycles that are geotracked and locked into a network of 692 stations across Chicago. 
The bikes can be unlocked from one station and returned to any other station in the system anytime.
Until now, Cyclistic’s marketing strategy relied on building general awareness and appealing to broad consumer segments.
One approach that helped make these things possible was the flexibility of its pricing plans: single-ride passes, full-day passes,
and annual memberships. 
- Customers who purchase single-ride or full-day passes are referred to as casual riders.
- Customers who purchase annual memberships are Cyclistic members.

**Cyclistic’s finance analysts have concluded that annual members are much more profitable than casual riders.**
Although the pricing flexibility helps Cyclistic attract more customers, Moreno believes that maximizing the number of annual members will
be key to future growth. 

**Rather than creating a marketing campaign that targets all-new customers, Moreno believes there is a
very good chance to convert casual riders into members. She notes that casual riders are already aware of the Cyclistic
program and have chosen Cyclistic for their mobility needs.**

Moreno has set a clear goal: Design marketing strategies aimed at converting casual riders into annual members. 
In order to do that, however, the marketing analyst team needs to better understand: 
- how annual members and casual riders differ
- why casual riders would buy a membership
- how digital media could affect their marketing tactics. 

Moreno and her team are interested in analyzing the Cyclistic historical bike trip data to identify trends.

<br>

## Stakeholders:

**1. Lily Moreno:**
The director of marketing and my manager in this scenario. Moreno is responsible for the development of campaigns and initiatives to promote the bike-share program.
These may include email, social media, and other channels.

**2. Cyclistic marketing analytics team:**
A team of data analysts who are responsible for collecting, analyzing, and
reporting data that helps guide Cyclistic marketing strategy. You joined this team six months ago and have been busy
learning about Cyclistic’s mission and business goals — as well as how you, as a junior data analyst, can help Cyclistic
achieve them.

**3.  Cyclistic executive team:**
The notoriously detail-oriented executive team will decide whether to approve the
recommended marketing program.

<br>

#### What are my stakeholders saying their problems are?

#### Now that I’ve identified the issues, how can I help the stakeholders resolve their questions?


![SMART questions](https://github.com/Gino-Freud-Hobayan/Google-Data-Analytics-Capstone-Project./assets/117270964/666be9a3-d120-4c8c-b89a-1f5b4daa1f9d)

<br>

## **Business Task:**

**How do annual members and casual riders use Cyclistic bikes differently?**

**What makes casual riders purchase a membership and how digital media could affect the company's marketing tactics.**

<br>

## **Deliverables:**

**1. A clear statement of the business task**

**2. A description of all data sources used**

**3. Documentation of any cleaning or manipulation of data**

**4. A summary of my analysis**

**5. Supporting visualizations and key findings**

**6. My top three recommendations based on my analysis**


<br><br><br><br><br>



# 2. PREPARE

In this step, I will be preparing the data and checking its reliability using the ROCCC analysis.

<br>

## **Prepare the data:**

1.  The Data is located in cloud storage in zip format (CSV file). This data is publicly available and I got access to it when I got the PDF
2.  Divvy system data (first-party data) is owned by the City of Chicago and released on a monthly schedule.
3.  The data is also processed to remove trips that are taken by staff as they service and inspect the system.
4.  Every ride data is anonymous.
5.  Are there issues with bias or credibility in this data? none. I used the ROCCC analysis to check.

<br>

### ROCCC for the Reliability of the Dataset
The dataset follows the ROCCC Analysis as described below:

- Reliable - yes, not biased
- Original - yes, can locate the original public data
- Comprehensive - yes, not missing important information
- Current - yes, updated monthly
- Cited - yes

<br><br>

6. Structured data.

Each CSV file consists of 13 columns:

- ride_id,
- rideable_type,
- started_at,
- ended_at,
- start_station_name,
- start_station_id,
- end_station_name,
- end_station_id,
- start_lat,
- start_lng,
- end_lat,
- end_lng,
- member_casual 



<br><br>

## **Limitations:**
    
#### 1. The analysis is based on the available dataset from Cyclistic. 

#### 2. Most of the data is anonymous (due to data privacy)  

#### 3. Additionally, the dataset contains a lot of null values thus affecting the accuracy of the analysis.

#### 4. For this analysis, we will only analyze historical trip data from July 2022 to June 2023 (12 csv files).
#### I will only use the most recent 12 months of data.
 
<img width="716" alt="July 2022 - June 2023 data" src="https://github.com/Gino-Freud-Hobayan/Google-Data-Analytics-Capstone_Gino/assets/117270964/94f8c4bf-c70b-463e-aea9-28f50a4bee31">





<br><br><br><br><br>





# 3. PROCESS

In this step, I will be processing and cleaning the data for exploratory data analysis.


<br>


## CREATE DATABASE and CREATE TABLE (SQL)
- DATABASE NAME = Bikeshare_database
- TABLE NAME = BikeShare_table



SQL Query:

```sql
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

-- REPEATED THIS SAME PROCESS UNTIL ALL 12 CSV FILES HAVE BEEN UPLOADED.

```


<br>



## Get the Head(50) and a general view of the data

```sql
SELECT TOP 50
	*
FROM 
	BikeShare_table;
```


<img width="752" alt="Head + general view1" src="https://github.com/Gino-Freud-Hobayan/Google-Data-Analytics-Capstone-Project./assets/117270964/b76aa0c3-dc17-4205-8bc6-1b1805a07900">
<img width="229" alt="Head + general view2" src="https://github.com/Gino-Freud-Hobayan/Google-Data-Analytics-Capstone-Project./assets/117270964/4540b9be-db1a-4249-a78a-1b385913f396">

### Inference:
- We can clearly see that there are null values in this dataset, we will have to deal with those values to ensure our analysis is accurate.

<br><br><br>




## CREATE A BACKUP DATABASE

<img width="519" alt="BACKUP DATABASE - SUCCESSFUL" src="https://github.com/Gino-Freud-Hobayan/Google-Data-Analytics-Capstone-Project./assets/117270964/e4165326-261f-4d8d-bbd2-5c6e81462802">


<br>
<br>
<br>
<br>


# DATA CLEANING:

### **This is done in order to ensure data integrity**

<img width="289" alt="Data cleaning img" src="https://github.com/Gino-Freud-Hobayan/Google-Data-Analytics-Capstone_Gino/assets/117270964/e6e966a8-20ae-49a7-ac73-31b08ef45247">

<br>
<br>


## Check for Duplicates

SQL Query:

```sql
SELECT
	pk_ride_id,
	COUNT(pk_ride_id) AS count_of_ride_id
FROM 
	BikeShare_table
GROUP BY 
	pk_ride_id
HAVING COUNT(pk_ride_id) > 1;


-- No duplicates on pk_ride_id

```

<img width="160" alt="NO DUPLICATES - pk_ride_id" src="https://github.com/Gino-Freud-Hobayan/Google-Data-Analytics-Capstone-Project./assets/117270964/0271c5d7-c78f-4bc1-891e-34ff9896104d">

<br><br>


## Check for null values

SQL Query:

```sql

/* 
WHEN the column is:
- IS NULL 
- OR  ('NA') 
- OR ('N/A') 
- OR LEN(column) = zero 

If this condition is met, return the value "1". (To act as a counter)
*/


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

```
<img width="815" alt="CHECK ALL COLUMNS FOR NULL VALUES" src="https://github.com/Gino-Freud-Hobayan/Google-Data-Analytics-Capstone-Project./assets/117270964/9f130457-7a19-45b2-b872-381b1ca84ed0">



#### Inference:
- Some columns have null values: start_station_name, start_station_id, end_station_name, end_station_id, end_lat, end_lng
- We have properly identified which columns have null values in them and how many null values are in total.

<br><br>



## Deal with LEADING and TRAILING spaces

SQL Query:

```sql
-- REMOVE THE TRAILING AND LEADING SPACES for columns with STRING dtypes only.

-- LTRIM (removes leading spaces)
-- RTRIM (removes trailing spaces)
-- TRIM (removes both leading and trailing spaces)


UPDATE BikeShare_table
SET pk_ride_id = TRIM(pk_ride_id);

UPDATE BikeShare_table
SET rideable_type = TRIM(rideable_type);

UPDATE BikeShare_table
SET start_station_name = TRIM(start_station_name)
WHERE start_station_name IS NOT NULL;

UPDATE BikeShare_table
SET start_station_id = TRIM(start_station_id)
WHERE start_station_id IS NOT NULL;

UPDATE BikeShare_table
SET end_station_name = TRIM(end_station_name)
WHERE end_station_name IS NOT NULL;

UPDATE BikeShare_table
SET end_station_id = TRIM(end_station_id)
WHERE end_station_id IS NOT NULL;

UPDATE BikeShare_table
SET member_casual = TRIM(member_casual);
```
<img width="820" alt="UPDATE SET  TRIM  successful in removing LEADING AND TRAILING SPACES" src="https://github.com/Gino-Freud-Hobayan/Google-Data-Analytics-Capstone-Project./assets/117270964/148f297f-a609-48c9-b0bf-a77f4cbcbee8">





<br><br>




## Fill the null/missing values

SQL Query:

```sql
SELECT
  *
FROM
  ______

```

<br><br>






## Addressing Outliers and Anomalies

SQL Query:

```sql

-- EXAMPLE:
-- Mean age = 25 yrs old
-- Outlier = 1 yr old or 80 yrs old


SELECT
  *
FROM
  ______

```

<br><br>




<br><br><br><br><br>

# 4. ANALYZE

In this step, I will be **analyzing the data to find patterns, trends, and insights.**


<img width="418" alt="Descriptive Stats" src="https://github.com/Gino-Freud-Hobayan/Google-DA-Capstone_Gino/assets/117270964/67d7c213-d721-4119-b789-40ad7e5b20ce">


<br><br>

## Descriptive Statistics:

<br>

## Sample

SQL Query:

```sql
SELECT
  *
FROM
  ______

```

<br><br>



## Sample

SQL Query:

```sql
SELECT
  *
FROM
  ______

```

<br><br>




## Sample

SQL Query:

```sql
SELECT
  *
FROM
  ______

```

<br><br>




## Sample

SQL Query:

```sql
SELECT
  *
FROM
  ______

```

<br><br>



<br><br><br><br><br><br>


# 5. SHARE

In this step, I made visualizations of the data and shared my insights about it.

Tableau link for the Data visualization: 

<br>

### Insights/Key Findings:
1. aa
2. aaa
3. aaaa
4. 




<br><br><br><br><br>


# 6. ACT

### Conclusion:


<br>



### Recommendations:

<br><br>

<br><br><br>




![Thank you wordcloud1](https://github.com/Gino-Freud-Hobayan/Google-DA-Capstone_Gino/assets/117270964/ba5b72d0-12b7-48ec-a36f-0b1fe218665a)
