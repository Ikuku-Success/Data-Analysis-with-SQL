-- Data Overview:

-- 1.1 View the entire dataset:
SELECT *
FROM "RAILSWARE_APPLICANT";

-- 1.2 Get all the distinct dates in the dataset
SELECT DISTINCT application_date
FROM "RAILSWARE_APPLICANT";

-- Applicant Statistics:
-- 1.1 Number of applicants per position:
SELECT position1, COUNT(applicantid) AS Num_applicants
FROM "RAILSWARE_APPLICANT"
GROUP BY position1
ORDER BY Num_applicants DESC;

-- 1.2 Total salary for each position
SELECT position1, SUM(salary) AS Total_Salary
FROM "RAILSWARE_APPLICANT"
GROUP BY position1
ORDER BY Total_Salary DESC;

-- 1.3 Average salary for each position
SELECT position1, AVG(salary) AS Average_Salary
FROM "RAILSWARE_APPLICANT"
GROUP BY position1
ORDER BY Average_Salary DESC;

-- 1.4 Total salary for each country
SELECT country, SUM(salary) AS Total_Salary
FROM "RAILSWARE_APPLICANT"
GROUP BY country
ORDER BY Total_Salary DESC;

-- 1.5 Number of applicants per application status
SELECT status, COUNT(status) AS Number_of_Applicants
FROM "RAILSWARE_APPLICANT"
GROUP BY status
ORDER BY Number_of_Applicants DESC;

-- Time-Based Analysis:

-- 1.1 Number of applicants per month
SELECT month1, COUNT(*) AS Total_Applicants
FROM "RAILSWARE_APPLICANT"
GROUP BY month1
ORDER BY Total_Applicants DESC;

-- Recruiter Analysis:

-- 1.1 Number of applicants reviewed by each recruiter
SELECT recruiter, COUNT(applicantid) AS Num_applicants
FROM "RAILSWARE_APPLICANT"
GROUP BY recruiter
ORDER BY num_applicants DESC;

-- 1.2 What is the number of applicant for each country recruited by Sheldon Cooper
SELECT country, COUNT(country) AS Occurrence
FROM "RAILSWARE_APPLICANT"
WHERE recruiter = 'Sheldon Cooper'
GROUP BY country
ORDER BY Occurrence;

-- 1.3 What is the number of applicant for each country recruited by Leslie Winkle
SELECT country, COUNT(country) AS Occurrence
FROM "RAILSWARE_APPLICANT"
WHERE recruiter = 'Leslie Winkle'
GROUP BY country
ORDER BY Occurrence;

-- 1.3 What is the number of applicant for each country recruited by Howard Wolowitz
SELECT country, COUNT(country) AS Occurrence
FROM "RAILSWARE_APPLICANT"
WHERE recruiter = 'Howard Wolowitz'
GROUP BY country
ORDER BY Occurrence;

-- 1.4 What is the number of applicant for each country recruited by Raj Koothrappali
SELECT country, COUNT(country) AS Occurrence
FROM "RAILSWARE_APPLICANT"
WHERE recruiter = 'Raj Koothrappali'
GROUP BY country
ORDER BY Occurrence; 

-- Stage Analysis

-- 1.1 Number of applicants at each stage
SELECT stage, COUNT(stage) AS Num_of_Applicants
FROM "RAILSWARE_APPLICANT"
GROUP BY stage
ORDER BY Num_of_Applicants DESC;

-- Recruiter-Country Analysis

-- 1.1 Number of applicants for each country recruited by each recruiter
SELECT recruiter, country, COUNT(country) AS Occurrence
FROM "RAILSWARE_APPLICANT"
GROUP BY recruiter, country
ORDER BY Occurrence;

-- Offer Stage Winners

-- 1.1 Applicants who got to the offer stage and won
SELECT applicant_name, stage, status
FROM "RAILSWARE_APPLICANT"
WHERE stage = 'Offer' AND status = 'won'
GROUP BY applicant_name, stage, status;

























































