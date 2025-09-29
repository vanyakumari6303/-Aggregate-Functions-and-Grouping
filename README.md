# Aggregate-Functions-and-Grouping
In this task, I practiced using aggregate functions and the GROUP BY clause to analyze and summarize data in SQL. Aggregate functions help to calculate values across multiple rows, and grouping allows categorizing records before applying these functions.

Using aggregate functions like:
COUNT() → count rows
SUM() → add values
AVG() → calculate averages
MIN() / MAX() → find smallest or largest value
Grouping records with GROUP BY to categorize results
Filtering grouped results using HAVING (like WHERE but for aggregated data)

Example queries:
-- Count total students
SELECT COUNT(*) FROM Students;

-- Average credits for all courses
SELECT AVG(credits) FROM Courses;

-- Count number of students per course
SELECT course_id, COUNT(student_id)
FROM Enrollments
GROUP BY course_id;

-- Show only courses with more than 1 student enrolled
SELECT course_id, COUNT(student_id)
FROM Enrollments
GROUP BY course_id
HAVING COUNT(student_id) > 1;

Outcome:
Learned how to generate summarized reports from tables
Applied grouping and aggregation for categorical analysis
Used HAVING to refine results after grouping
