-- Find healthiest employees eligible for bonus
SELECT * 
FROM Absenteeism_at_work
WHERE 
    Social_drinker = 0 AND 
    Social_smoker = 0 AND 
    Body_mass_index < 25 AND 
    Absenteeism_time_in_hours < (
        SELECT AVG(Absenteeism_time_in_hours) 
        FROM Absenteeism_at_work
    );

-- Find healthiest employees eligible for bonus
SELECT * 
FROM Absenteeism_at_work
WHERE 
    Social_drinker = 0 AND 
    Social_smoker = 0 AND 
    Body_mass_index < 25 AND 
    Absenteeism_time_in_hours < (
        SELECT AVG(Absenteeism_time_in_hours) 
        FROM Absenteeism_at_work
    );

-- Count the number of non-smokers (for $983,221 budget, $0.68/hour or $1,414.4/year increase)
SELECT 
    COUNT(*) AS non_smokers 
FROM Absenteeism_at_work
WHERE Social_smoker = 0;


-- Optimized query with BMI category and season classification
SELECT 
	a.Absenteeism_time_in_hours,
    a.ID,
    r.Reason,
    a.Month_of_absence,
    a.Day_of_the_week,
    a.Transportation_expense,
    a.Education,
    a.Son,
    a.Social_drinker,
    a.Social_smoker,
    a.Pet,
    a.Disciplinary_failure,
    a.Age,
    a.Work_load_Average_day,
    a.Body_mass_index,
    
    -- BMI Category
    CASE
        WHEN a.Body_mass_index < 18.5 THEN 'Underweight'
        WHEN a.Body_mass_index BETWEEN 18.5 AND 24.9 THEN 'Healthy Weight'
        WHEN a.Body_mass_index BETWEEN 25 AND 29.9 THEN 'Overweight'
        WHEN a.Body_mass_index >= 30 THEN 'Obese'
        ELSE 'Unknown'
    END AS BMI_Category,

    -- Season Names
    CASE 
        WHEN a.Month_of_absence IN (12, 1, 2) THEN 'Winter'
        WHEN a.Month_of_absence IN (3, 4, 5) THEN 'Spring'
        WHEN a.Month_of_absence IN (6, 7, 8) THEN 'Summer'
        WHEN a.Month_of_absence IN (9, 10, 11) THEN 'Fall'
        ELSE 'Unknown'
    END AS Season_Name

FROM Absenteeism_at_work a
LEFT JOIN compensation b ON a.ID = b.ID
LEFT JOIN Reasons r ON a.Reason_for_absence = r.Number;
