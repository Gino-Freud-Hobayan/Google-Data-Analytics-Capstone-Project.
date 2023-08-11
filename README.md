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
1. ASK
2. PREPARE
3. PROCESS
4. ANALYZE
5. SHARE
6. ACT

<br><br><br><br>

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

In this step, I will be **using Cyclistic's historical trip data to analyze and identify trends.**

<br>

## **Prepare the data:**

1. The Data is located in a cloud storage in zip format (csv file). This data is publicly available and I got access to it when I got the PDF
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

Each csv file consists of 13 columns:

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

### **Data Cleaning to ensure data integrity**

<br>


## CREATE DATABASE and CREATE TABLE (SQL)

SQL Query:

```
SELECT
  *
FROM
  ______

```

<br>





## Check for Duplicates

SQL Query:

```
SELECT
  *
FROM
  ______

```

<br>


## Check for Null values

SQL Query:

```
SELECT
  *
FROM
  ______

```

<br>



## Fill the missing values

SQL Query:

```
SELECT
  *
FROM
  ______

```

<br>



<br><br><br><br><br>

# 4. ANALYZE

<img width="418" alt="Descriptive Stats" src="https://github.com/Gino-Freud-Hobayan/Google-DA-Capstone_Gino/assets/117270964/67d7c213-d721-4119-b789-40ad7e5b20ce">

**Descriptive statistics and analysis of the data to find patterns, trends, and insights.**

<br><br>

## Descriptive Statistics:

<br>

SQL Query:

```
SELECT
  *
FROM
  ______

```

<br><br>





SQL Query:

```
SELECT
  *
FROM
  ______

```

<br><br>





SQL Query:

```
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
