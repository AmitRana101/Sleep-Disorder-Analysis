create database sleep_dis;
use sleep_dis;


select * from sleep_disorderdataset;

ALTER TABLE sleep_disorderdataset
RENAME COLUMN `Sleep Duration` TO Sleep_Duration;

ALTER TABLE sleep_disorderdataset
RENAME COLUMN `Quality of Sleep` TO Quality_of_Sleep;

ALTER TABLE sleep_disorderdataset
RENAME COLUMN `Physical Activity Level` TO Physical_Activity_Level;

ALTER TABLE sleep_disorderdataset
RENAME COLUMN `Stress Level` TO Stress_Level;

ALTER TABLE sleep_disorderdataset
RENAME COLUMN `BMI Category` TO BMI_Category;

ALTER TABLE sleep_disorderdataset
RENAME COLUMN `Blood Pressure` TO Blood_Pressure;

ALTER TABLE sleep_disorderdataset
RENAME COLUMN `Heart Rate` TO Heart_Rate;

ALTER TABLE sleep_disorderdataset
RENAME COLUMN `Daily Steps` TO Daily_Steps;


ALTER TABLE sleep_disorderdataset
RENAME COLUMN `Sleep Disorder` TO Sleep_Disorder;

SELECT * 
FROM sleep_disorderdataset;

SELECT COUNT(*) AS total_people
FROM sleep_disorderdataset;

SELECT DISTINCT Occupation
FROM sleep_disorderdataset;

SELECT AVG(Sleep_Duration) AS avg_sleep_duration
FROM sleep_disorderdataset;

SELECT *
FROM sleep_disorderdataset
WHERE Sleep_Disorder = 'Sleep Apnea';

SELECT Gender, COUNT(*) AS total
FROM sleep_disorderdataset
GROUP BY Gender;


SELECT Occupation, AVG(Sleep_Duration) AS avg_sleep
FROM sleep_disorderdataset
GROUP BY Occupation;

SELECT `Person ID`, Age, Occupation, Stress_Level
FROM sleep_disorderdataset
WHERE Stress_Level > 7;

SELECT BMI_Category, COUNT(*) AS total_people
FROM sleep_disorderdataset
GROUP BY BMI_Category;

SELECT `Person ID`, Occupation, Daily_Steps
FROM sleep_disorderdataset
ORDER BY Daily_Steps DESC
LIMIT 5;

SELECT Gender, AVG(Heart_Rate) AS avg_heart_rate
FROM sleep_disorderdataset
GROUP BY Gender;