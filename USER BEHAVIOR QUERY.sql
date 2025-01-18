1. SELECT AGE,GENDER,COUNT(*) AS COUNT FROM [dbo].[user_behavior_dataset]
GROUP BY AGE, GENDER
ORDER BY COUNT DESC 

2. SELECT OPERATING_SYSTEM, COUNT(*) AS OS_COUNT
FROM [dbo].[user_behavior_dataset] GROUP BY OPERATING_SYSTEM
ORDER BY OS_COUNT DESC

3. SELECT DEVICE_MODEL, COUNT(*) AS DEVICE_COUNT
FROM [dbo].[user_behavior_dataset] GROUP BY DEVICE_MODEL
ORDER BY DEVICE_COUNT DESC

4. SELECT * FROM [dbo].[user_behavior_dataset]

5. SELECT AGE,
AVG(SCREEN_ON_TIME_HOURS_DAY) AS AVG_SCREEN_ON_TIME, 
AVG(BATTERY_DRAIN_MAH_DAY) AS AVG_BATTERY_DRAIN
FROM [dbo].[user_behavior_dataset] 
GROUP BY AGE 
ORDER BY AGE ASC 

6. SELECT GENDER,
AVG(SCREEN_ON_TIME_HOURS_DAY) AS AVG_SCREEN_ON_TIME, 
AVG(BATTERY_DRAIN_MAH_DAY) AS AVG_BATTERY_DRAIN
FROM [dbo].[user_behavior_dataset] 
GROUP BY GENDER 
ORDER BY GENDER ASC 

7. SELECT device_model,AVG (SCREEN_ON_TIME_HOURS_DAY) AS avg_screen_on_time, AVG(BATTERY_DRAIN_MAH_DAY) 
FROM [dbo].[user_behavior_dataset] group by device_model order by device_model

8. SELECT operating_system, AVG(screen_on_time_hours_day) AS avg_screen_on_time, 
  AVG(battery_drain_mah_day) AS avg_battery_drain
FROM [dbo].[user_behavior_dataset] GROUP BY 
  operating_system
ORDER BY 
  operating_system ASC

9. SELECT user_behavior_class, 
  AVG(battery_drain_mah_day) AS avg_battery_drain, 
  AVG(screen_on_time_hours_day) AS avg_screen_on_time
FROM [dbo].[user_behavior_dataset]
GROUP BY user_behavior_class
ORDER BY user_behavior_class ASC;

10. SELECT COUNT(DISTINCT user_id) AS total_users
FROM [dbo].[user_behavior_dataset]

11. SELECT AVG(age) AS avg_age FROM [dbo].[user_behavior_dataset]
  
12. SELECT device_model, COUNT(DISTINCT user_id) AS user_count
FROM [dbo].[user_behavior_dataset]
GROUP BY 
  device_model
ORDER BY 
  device_model ASC

13. SELECT operating_system, COUNT(DISTINCT user_id) AS user_count
FROM [dbo].[user_behavior_dataset]
GROUP BY operating_system
ORDER BY operating_system ASC

