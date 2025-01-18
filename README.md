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

```EXCEL
COUNT(A:A)
```

```EXCEL
AVERAGE(E:E)
```

```EXCEL
STDEV(E:E)
```
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
```SQL
SELECT AGE,
AVG(SCREEN_ON_TIME_HOURS_DAY) AS AVG_SCREEN_ON_TIME, 
AVG(BATTERY_DRAIN_MAH_DAY) AS AVG_BATTERY_DRAIN
FROM [dbo].[user_behavior_dataset] 
GROUP BY AGE 
ORDER BY AGE ASC 
```
```SQL
SELECT GENDER,
AVG(SCREEN_ON_TIME_HOURS_DAY) AS AVG_SCREEN_ON_TIME, 
AVG(BATTERY_DRAIN_MAH_DAY) AS AVG_BATTERY_DRAIN
FROM [dbo].[user_behavior_dataset] 
GROUP BY GENDER 
ORDER BY GENDER ASC 
```
```SQL
SELECT device_model,AVG (SCREEN_ON_TIME_HOURS_DAY) AS avg_screen_on_time, AVG(BATTERY_DRAIN_MAH_DAY) 
FROM [dbo].[user_behavior_dataset] group by device_model order by device_model
```
```SQL
 SELECT operating_system, AVG(screen_on_time_hours_day) AS avg_screen_on_time, 
  AVG(battery_drain_mah_day) AS avg_battery_drain
FROM [dbo].[user_behavior_dataset] GROUP BY 
  operating_system
ORDER BY 
  operating_system ASC
```
```SQL
 SELECT user_behavior_class, 
  AVG(battery_drain_mah_day) AS avg_battery_drain, 
  AVG(screen_on_time_hours_day) AS avg_screen_on_time
FROM [dbo].[user_behavior_dataset]
GROUP BY user_behavior_class
ORDER BY user_behavior_class ASC;
```
```SQL
 SELECT COUNT(DISTINCT user_id) AS total_users
FROM [dbo].[user_behavior_dataset]
```
```SQL
SELECT AVG(age) AS avg_age FROM [dbo].[user_behavior_dataset]
```
```SQL
SELECT device_model, COUNT(DISTINCT user_id) AS user_count
FROM [dbo].[user_behavior_dataset]
GROUP BY 
  device_model
ORDER BY 
  device_model ASC
```
```SQL
 SELECT operating_system, COUNT(DISTINCT user_id) AS user_count
FROM [dbo].[user_behavior_dataset]
GROUP BY operating_system
ORDER BY operating_system ASC
```

3. Power BI
- Conditional columns
- Measures

```POWER BI
Average Age of User = AVERAGE('user_behavior_dataset (2)'[Age])
```

```POWER BI
Average Screen Time = AVERAGE('user_behavior_dataset (2)'[Screen On Time (hours/day)])
```

```POWER BI
Total Data Usage = SUM('user_behavior_dataset (2)'[Data Usage (MB/day)])
```

```POWER BI
Total Users = DISTINCTCOUNT('user_behavior_dataset (2)'[User ID])
```
### Visualizations

- Pivot Table Summarizations

![JAN17,1](https://github.com/user-attachments/assets/f19ba005-26d3-4051-ad96-58e0f19c4230)

![JAN17,2](https://github.com/user-attachments/assets/1295e00f-9f31-433b-ba31-f6ec07448bb3)

- Metrics with Excel formula

![JAN17,3](https://github.com/user-attachments/assets/c145bb46-27d2-4913-9574-7060653cfe56)

- Structured Query Language(SQL) Summarizations
![JAN17,4](https://github.com/user-attachments/assets/c8d54279-93d2-418e-a720-fad1789917e6)

![JAN17,5](https://github.com/user-attachments/assets/06506c21-836c-4e47-985a-a6f53a0f5ac7)

![JAN17,6](https://github.com/user-attachments/assets/b59444ac-c357-4b1f-aa07-bf7d21d3f8d3)

![JAN17,7](https://github.com/user-attachments/assets/8eb144d5-d797-43bb-9fa3-51e95893a9ef)

User Behavior Dashboard

![jan2,9](https://github.com/user-attachments/assets/326e9c47-1065-4ce2-a357-1a39f39f671b)

![jan2,8](https://github.com/user-attachments/assets/a6a84e66-944f-4e26-9ce0-f01d4041d9d6)

![jan2,7](https://github.com/user-attachments/assets/e4073616-8cb8-4b91-bb16-fb7673f0c1f0)

![jan2,6](https://github.com/user-attachments/assets/214ea2e6-1c40-4dc7-9528-1448406f5879)

![jan2,3](https://github.com/user-attachments/assets/4b08be63-4614-4c96-b572-c185f16e9acf)

### Result and Findings

- The analysis revealed that the total users are 700 and the average screen time is 5.2 hours
- The most commonly used operating system is Android, with 554 users, iOS has 146 users.
- The most commonly used device models are iPhone 12 and Xiaomi 11 with both having 146 users
- The least used device model is Samsung Galaxy S21 with 133 users.
- ⁠iPhone 12 device users have the highest average screen time and Xiaomi 11 device users have the highest average battery drain.

- Age 21 has the highest average battery drain and an average screen time of 6.39 hours while age 48 has the highest average screen time of 6.87
- User behavior class 5 has the highest average screen time, average battery drain and highest count for total data usage. while yser behavior class 1 has the least count for total data usage.
- Male users account for the highest count of users by gender.

### Recommendations 

Device manufacturers should optimize battery life for iPhone 12 and Xiaomi Mi 11 models and improve screen time management features. App developers should prioritize Android compatibility and optimize app battery usage. Operating system developers should enhance power management and develop user behavior-based features.

