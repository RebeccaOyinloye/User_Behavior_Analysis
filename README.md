# User_Behavior_Analysis

### Project Overview 
---
This repository contains an analysis of a user behavior dataset, focusing on mobile device usage patterns. The analysis aims to identify trends and patterns in user behavior, develop insights to inform strategies for improving user experience and engagement.

### Data Source 
---
The Primary Source of the data used is an online source data that can be freely downloaded from an open source online or data repository sites.

### Tools Used
---
- Excel
  1. For Data Cleaning
  2. For Data Analysis 

- Structured Query Language (SQL) - For Querying of Data

- Power Bi - For Creating Reports  
 
- Github - For Portfolio Building

### Data Cleaning and Preparation

In the initial Preparation phase i performed the following tasks: 
1. Data loading and inspection
2. Data Cleaning and Formatting 
3. Removing Duplicates

### Exploratory Data Analysis
---
Explored User Behavior Data to answer key questions and extract key insights:
1. What is the age and gender distribution of the users?
2. Which operating systems and device models are most commonly used?
3. Are there any differences in user behavior across different age groups or genders?
4. ⁠How much time do users spend on their devices  
5. ⁠What are the  differences in usage patterns across different operating systems and device models?
6. ⁠How do different user behaviors relate to each other
7. ⁠What is user behavior class category and their battery drain and screen on time
8. ⁠What is the total number of user 
9. ⁠What is the average age of users 
10. ⁠What is the number of user by device model 
11. ⁠What is the number of user by operating system

### Data Analysis 
---
This include some of the code and features i worked with, such as:

1. Excel
- pivot table
-  Utilized pivot tables to summarize user behavior data, analyzing user, behavior by device usage, operating system,and demographic 

2. Structured Query Language(SQL)
```SQL
SELECT age,  gender, COUNT(*) As count FROM user_behavior_dataset
GROUP BY  age, gender
ORDER BY 
  count DESC
```
```SQL
SELECT operating_system, COUNT(*) AS OS_count FROM 
  user_behavior_dataset
GROUP BY  operating_system
ORDER BY  OS_count DESC
```
```SQL
SELECT 
  device_model, COUNT(*) AS device_count FROM  user_behavior_dataset
GROUP BY device_model
ORDER BY 
  device_count DESC
```

3. Power BI
- Conditional columns
- Measures

### Visualizations

- Pivot Table Summarizations

- Metrics with Excel formula

- Structured Query Language(SQL) Summarizations

User Behavior Dashboard


### Result and Findings



