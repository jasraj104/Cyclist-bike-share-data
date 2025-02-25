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
Data Source 
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

2. [Data Exploring](https://github.com/jasraj104/Cyclist-bike-share-data/blob/main/2%20-%20Data%20exploration.sql)
4. [Data Cleaning](https://github.com/jasraj104/Cyclist-bike-share-data/blob/main/3%20-%20Cleaned_data.sq)
5. [Data Analysis](https://github.com/jasraj104/Cyclist-bike-share-data/blob/main/4%20-%20Analysis.sql)
### 4. Analyze
### 5. Share
### 6. Act

