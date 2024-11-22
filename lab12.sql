--1 Concatenate Course Name and Semester:
SELECT course_name || ' - ' || semester AS course_semester
FROM courses;

--2 Find Courses with Labs on Fridays:
SELECT lab_time, course_id, course_name
FROM courses
WHERE lab_time LIKE 'Fri%';

-- 3 Upcoming Assignments:
SELECT *
FROM  assignments
WHERE status != 'Completed'
ORDER BY due_date > 2024-11-21;

--4 Count Assignments by Status:
SELECT status, COUNT(*) AS assignment_count
FROM assignments
GROUP BY status;

--5 Longest Course Name:
--STEP1 
SELECT MAX(LENGTH(course_name)) AS max_length
FROM courses;
--STEP2
SELECT course_id, course_name
FROM courses
WHERE LENGTH(course_name) = (SELECT MAX(LENGTH(course_name)) FROM courses);

--6 Uppercase Course Names:
SELECT upper(course_name)
FROM courses;

--7 Assignments Due in September:
SELECT title
FROM assignments
WHERE due_date LIKE '%-09-%';

--8 Assignments with Missing Due Dates:
SELECT title
FROM assignments
WHERE due_date IS NULL;
--output: Assignment with no date
