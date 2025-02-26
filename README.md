# Google Data Analytics Capstone Project :- Cyclist Bike Share Case-Study
Course - [coursera.org/learn/google-data-analytics-capstone](https://www.coursera.org/learn/google-data-analytics-capstone)

Dataset Link - [divvy-tripdata.s3.amazonaws.com/index.html](https://divvy-tripdata.s3.amazonaws.com/index.html)
## Introduction

The Cyclistic Bike Share case study is a capstone project for the Google Data Analytics . It follows the data analysis process-[Ask](ASK), [Prepare](Prepare), [Process](Process), [Analyze](Analyze), [Share](Share), and [Act](Act)-to examine Cyclistic’s bike-share data. By performing all real-world tasks of a junior data analyst, this project aims to uncover insights that inform business decisions for this company.
## Background

 Cyclistic is a Bike-share company based in chicago. In 2016, Cyclistic launched a successful bike-share offering. Since then, the program has grown
 to a fleet of 5,824 bicycles that are geotracked and locked into a network of 692 stations
 across Chicago. The bikes can be unlocked from one station and returned to any other station
 in the system anytime.
 
 Until now, Cyclistic’s marketing strategy relied on building general awareness and appealing to
 broad consumer segments. One approach that helped make these things possible was the
 exibility of its pricing plans: single-ride passes, full-day passes, and annual memberships.
 Customers who purchase single-ride or full-day passes are referred to as casual riders.
 Customers who purchase annual memberships are Cyclistic members.
 
 Cyclistic’s finance analysts have concluded that annual members are much more profitable
 than casual riders. Although the pricing flexibility helps Cyclistic attract more customers,
 Moreno believes that maximizing the number of annual members wil be key to future growth.
 Rather than creating a marketing campaign that targets all-new customers, The director of marketing and managing believes
 there is a solid opportunity to convert casual riders into members. She notes that casual riders
 are already aware of the Cyclistic program and have chosen Cyclistic for their mobility needs.
 
 The Marketing Director has set a clear goal: Design marketing strategies aimed at converting casual riders into
 annual members. The director and her team are interested in
 analyzing the Cyclistic historical bike trip data to identify trends.

 ## Scenerio
 Now as a junior data analyst, my team and I have to understand how casual riders and annual members are using Cyclistic bikes differently. From these insights, we 
 will design a new marketing strategy to convert casual riders into annual members.
 Firstly, Cyclistic executives must have to approve our recommendations, so they must be backed up with gripping data insights and professional data visualizations.

## Approach
### 1. Ask

Business Task - Designing Market Stratergies to convert Casual Riders to Members by understanding how do they both differ and how digital markerting would affect this conversion

Questions for guiding future marketing program:-

1. How do annual members and casual riders use Cyclistic bikes differently?
2. Why would casual riders buy Cyclistic annual memberships?
3. How can Cyclistic use digital media to influence casual riders to become members?

### 2. Prepare
**Data Source**
The Data used here is Cyclistic Historical Trip Data Date Ranges from Jan 2022 to Feb 2022 . 

Link - [divvy-tripdata.s3.amazonaws.com/index.html](https://divvy-tripdata.s3.amazonaws.com/index.html).
(The data has been made available by Motivate International Inc. under this [license](https://divvybikes.com/data-license-agreement)).

This is public data that can be used to explore how different customer types are using Cyclistic bikes. But note that data-privacy issues prohibit from using riders’ personally identifiable information. This means that we won’t be able to connect pass purchases to credit card numbers to determine if casual riders live in the Cyclistic service area or if they have purchased multiple single passes.

There are 12 files with naming convention of YYYYMM-divvy-tripdata and each file includes information for one month.

**Tools Used**:
- Data Cleaning & Processing - SQL on Google BigQuery , Google Cloud for Data Storage.
- Data Vizualization - Tableau

### 3. Process
All the operations on the data are performed in this phase
1. [Data Merging](https://github.com/jasraj104/Cyclist-bike-share-data/blob/main/1%20-%20Cyclist_Data%20_Merging%20.sql) - Firstly, The Data is stored in the local storage or the cloud for easy access . Then all the files from Jan 2022 to Feb 2022 are stacked and combined into a single Tabular File. The table consists of 5,667,717 rows.

2. [Data Exploring](https://github.com/jasraj104/Cyclist-bike-share-data/blob/main/2%20-%20Data%20exploration.sql) - The Queries were ran for each column of the data table from left to right in order to explore the data and find out any errors or inconsistencies.
    1. The data consists of the following 13 attributes 
       
       ![image](https://github.com/user-attachments/assets/3552ebe1-7b6e-443c-927e-2f1daefc1e9d)
    2. Null value counts for each attribute
       
       ![image](https://github.com/user-attachments/assets/a065e2b0-31ae-476e-a545-1a632afcf52f)
    3. Checking for Duplicate Rows
	
       ![image](https://github.com/user-attachments/assets/b7ebff54-79f1-4d0c-98e8-5fafb5afbba4)

    4. Checking Length of the Ride id if it is constant or not
    5. Checking the types of Bikes in the data
    
       ![image](https://github.com/user-attachments/assets/9842149d-943f-4d6d-ad6d-a3b16b8f55d2)
    6. Types of Riders
   
       ![image](https://github.com/user-attachments/assets/937e2731-ca2f-4b41-810d-e7b2ac0e8659)



3. [Data Cleaning](https://github.com/jasraj104/Cyclist-bike-share-data/blob/main/3%20-%20Cleaned_data.sq)

   - All the rows with null/missing values and inconsistencies were removed
   - 3 New Columns ride_length_in_mins ,day_of_week , month were added
   - All the trips which were less than a minute and more than the day were removed.
  
### 4. Analyze
[Data Analysis](https://github.com/jasraj104/Cyclist-bike-share-data/blob/main/4%20-%20Analysis.sql) - Now that our data is stored appropriately and has been prepared for analysis, we'll start putting it to work.
 
 	Analysis Question  - How do annual members and casual riders use Cyclistic bikes differently?
 1. Firstly, the Members and Casual Riders are compared by total number of rides they have completed.

    ![Sheet 1](https://github.com/user-attachments/assets/28c2ab0a-2daa-4736-b7d9-6e34dda59fd5)

    The Cyclistic Members make upto **59.45 %** of the total where as casual riders are accounted for **40.55 %**.
 3. Then Members and Casual Riders are compared by the types of the bikes they are using for each ride.

    ![Sheet 2](https://github.com/user-attachments/assets/90171dcd-ac7a-4803-9584-41230e632048)

    - The Type of Bikes chart depicts that majority ie.**39%** of Member Riders prefer Classic Bikes over other two.
    - The Docked bikes are only preferred by the Casual Riders.
 4. Average ride Duration of both types

    ![Avg duration MEM vs CAS](https://github.com/user-attachments/assets/4625b595-ad44-4057-a26a-627b7b2f22c6)

    - Here the members ride the bicycles for about 12.41 minutes on average whereas casual riders have an average ride length of 23.82 minutes.
    - Hence, the ride duration of Cyclistic members is approximately two times smaller than casual riders.

 
### 5. Share
### 6. Act

