-- View the entire dataset
SELECT * FROM "RAILSWARE_APPLICANT"

-- All Distinct Positions of the RAILSWARE_APPLICANT dataset
SELECT DISTINCT position1
FROM "RAILSWARE_APPLICANT";

-- Next we count the number of applicant per position
SELECT position1, COUNT(applicantid) AS num_applicants
FROM "RAILSWARE_APPLICANT"
GROUP BY position1
ORDER BY num_applicants DESC;

-- What are the total salary for each position
SELECT position1, SUM(salary) AS Total_Salary
FROM "RAILSWARE_APPLICANT"
GROUP BY position1
ORDER BY Total_Salary DESC;

-- What are the average salary for each position
SELECT position1, AVG(salary) AS Average_Salary
FROM "RAILSWARE_APPLICANT"
GROUP BY position1
ORDER BY Average_Salary DESC;

-- What is the total salary for each country
SELECT country, SUM(salary) AS Total_Salary
FROM "RAILSWARE_APPLICANT"
GROUP BY country
ORDER BY Total_Salary DESC;

-- What are the number of applicants per application status
SELECT status, COUNT(status) as Number_of_Applicants
FROM "RAILSWARE_APPLICANT"
GROUP BY status
ORDER BY Number_of_Applicants DESC;

-- Get all the distinct dates in the dataset
SELECT DISTINCT application_date 
FROM "RAILSWARE_APPLICANT"; 

-- What are the number of applicants per month
SELECT Month1, COUNT(Month1) as Total_Applicants
FROM "RAILSWARE_APPLICANT"
GROUP BY Month1
ORDER BY Total_Applicants DESC;

-- What are the number of applicants reviewed by a recruiter
SELECT recruiter, COUNT(applicantid) AS Num_applicants
FROM "RAILSWARE_APPLICANT"
GROUP BY recruiter
ORDER BY num_applicants DESC;

-- Number of Applicants that qualified for each stage
SELECT stage, COUNT(stage) as Num_of_Applicants
FROM "RAILSWARE_APPLICANT"
GROUP BY stage
ORDER BY Num_of_Applicants DESC;

-- What is the number of applicant for each country recruited by Sheldon Cooper
SELECT country, COUNT(country) AS Occurrence
FROM "RAILSWARE_APPLICANT"
WHERE recruiter = 'Sheldon Cooper'
GROUP BY country
ORDER BY Occurrence;

-- What is the number of applicant for each country recruited by Leslie Winkle
SELECT country, COUNT(country) AS Occurrence
FROM "RAILSWARE_APPLICANT"
WHERE recruiter = 'Leslie Winkle'
GROUP BY country
ORDER BY Occurrence;

-- What is the number of applicant for each country recruited by Howard Wolowitz
SELECT country, COUNT(country) AS Occurrence
FROM "RAILSWARE_APPLICANT"
WHERE recruiter = 'Howard Wolowitz'
GROUP BY country
ORDER BY Occurrence;

-- What is the number of applicant for each country recruited by Raj Koothrappali
SELECT country, COUNT(country) AS Occurrence
FROM "RAILSWARE_APPLICANT"
WHERE recruiter = 'Raj Koothrappali'
GROUP BY country
ORDER BY Occurrence; 

-- Applicants who got to offer stage and won
SELECT applicant_name, stage, status FROM "RAILSWARE_APPLICANT"
WHERE stage = 'Offer' AND status = 'won'
GROUP BY applicant_name, stage, status

