USE gaming_vs_academics;

-- ==========================
-- Basic Statistics
-- ==========================

-- Total number of students

SELECT COUNT(*) AS total_students
FROM Gaming_vs_academics;


-- Overall student behavior summary

SELECT
ROUND(AVG(gaming_hours),2) AS avg_gaming_hours,
ROUND(AVG(study_hours),2) AS avg_study_hours,
ROUND(AVG(sleep_hours),2) AS avg_sleep_hours,
ROUND(AVG(grades),2) AS avg_grades,
ROUND(AVG(addiction_score),2) AS avg_addiction_score
FROM Gaming_vs_academics;


-- Maximum and minimum grades

SELECT
MAX(grades) AS highest_grade,
MIN(grades) AS lowest_grade
FROM Gaming_vs_academics;


-- Highest gaming hours

SELECT
MAX(gaming_hours) AS highest_gaming_hours
FROM Gaming_vs_academics;


-- Lowest attendance

SELECT
MIN(attendance) AS lowest_attendance
FROM Gaming_vs_academics;


-- ==========================
-- Gender Analysis
-- ==========================

-- Average grades by gender

SELECT
gender,
ROUND(AVG(grades),2) AS avg_grades
FROM Gaming_vs_academics
GROUP BY gender;


-- Which gender has the most addicted students?

SELECT
gender,
COUNT(*) AS addicted_students
FROM Gaming_vs_academics
WHERE addiction_score >= 8
GROUP BY gender
ORDER BY addicted_students DESC;


-- ==========================
-- Gaming Behavior Analysis
-- ==========================

-- Count of students by gaming genre

SELECT
gaming_genre,
COUNT(*) AS total_students
FROM Gaming_vs_academics
GROUP BY gaming_genre
ORDER BY total_students DESC;


-- Which gaming genre has the most addicted students?

SELECT
gaming_genre,
COUNT(*) AS addicted_students
FROM Gaming_vs_academics
WHERE addiction_score >= 8
GROUP BY gaming_genre
ORDER BY addicted_students DESC;


-- Do most addicted students spend more gaming hours?

SELECT
addiction_score,
ROUND(AVG(gaming_hours),2) AS avg_gaming_hours
FROM Gaming_vs_academics
GROUP BY addiction_score
ORDER BY addiction_score DESC;


-- How does addiction score affect grades?

SELECT
addiction_score,
ROUND(AVG(grades),2) AS avg_grade
FROM Gaming_vs_academics
GROUP BY addiction_score
ORDER BY addiction_score DESC;


-- Do higher gaming hours affect grades?

SELECT
gaming_hours,
ROUND(AVG(grades),2) AS avg_grade
FROM Gaming_vs_academics
GROUP BY gaming_hours
ORDER BY gaming_hours;


-- ==========================
-- Academic Performance Analysis
-- ==========================

-- Do more study hours improve grades?

SELECT
study_hours,
ROUND(AVG(grades),2) AS avg_grade
FROM Gaming_vs_academics
GROUP BY study_hours
ORDER BY study_hours;


-- Does more attendance lead to better grades?

SELECT
attendance,
ROUND(AVG(grades),2) AS avg_grade
FROM Gaming_vs_academics
GROUP BY attendance
ORDER BY attendance DESC;


-- Is social activity related to lower academic performance?

SELECT
social_activity,
ROUND(AVG(grades),2) AS avg_grade
FROM Gaming_vs_academics
GROUP BY social_activity
ORDER BY avg_grade ASC;


-- ==========================
-- Sleep and Stress Analysis
-- ==========================

-- Which age group has the highest stress level?

SELECT
age,
ROUND(AVG(stress_level),2) AS avg_stress
FROM Gaming_vs_academics
GROUP BY age
ORDER BY avg_stress DESC;


-- How do sleep hours affect grades and stress levels?

SELECT
sleep_hours,
ROUND(AVG(grades),2) AS avg_grade,
ROUND(AVG(stress_level),2) AS avg_stress
FROM Gaming_vs_academics
GROUP BY sleep_hours
ORDER BY sleep_hours;


-- ==========================
-- Advanced Analysis
-- ==========================

-- Top 10 students with highest addiction scores

SELECT
student_id,
gaming_hours,
study_hours,
grades,
addiction_score
FROM Gaming_vs_academics
ORDER BY addiction_score DESC
LIMIT 10;






















