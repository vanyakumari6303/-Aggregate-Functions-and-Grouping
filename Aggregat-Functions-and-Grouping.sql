USE CollegeDB;

-- 1. Count total number of students
SELECT COUNT(*) AS total_students
FROM Students;

-- 2. Count students with email addresses
SELECT COUNT(email) AS students_with_email
FROM Students;

-- 3. Average credits of all courses
SELECT AVG(credits) AS avg_course_credits
FROM Courses;

-- 4. Total enrollments in the system
SELECT COUNT(*) AS total_enrollments
FROM Enrollments;

-- 5. Number of students per course
SELECT course_id, COUNT(student_id) AS student_count
FROM Enrollments
GROUP BY course_id;

-- 6. Show courses with more than 1 student enrolled (HAVING)
SELECT course_id, COUNT(student_id) AS student_count
FROM Enrollments
GROUP BY course_id
HAVING COUNT(student_id) > 1;

-- 7. Total courses taught by each instructor
SELECT instructor_id, COUNT(course_id) AS total_courses
FROM Courses
GROUP BY instructor_id;

-- 8. Average credits of courses per instructor
SELECT instructor_id, AVG(credits) AS avg_credits
FROM Courses
GROUP BY instructor_id;

-- 9. Students grouped by birth year
SELECT YEAR(dob) AS birth_year, COUNT(*) AS total_students
FROM Students
WHERE dob IS NOT NULL
GROUP BY YEAR(dob);

-- 10. Top 3 courses with most enrollments
SELECT course_id, COUNT(*) AS total_enrollments
FROM Enrollments
GROUP BY course_id
ORDER BY total_enrollments DESC
LIMIT 3;
