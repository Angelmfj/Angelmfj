--Title and due date
SELECT  title, due_date
FROM assignments
where course_id Like 'COMP1234';

-- earliest assignment due date 
SELECT min(due_date) FROM assignments;
--2024/09/10

-- latest assignment due date 
SELECT max(due_date) FROM assignments;
--2025/03/20

--find the title and course_id of assignments due on 2024-10-08.
SELECT title, course_id
FROM assignments
WHERE due_date = '2024-10-08';

--display the title and due_date of assignments due in October 2024 usint LIKE
SELECT title, due_date
FROM assignments
WHERE due_date LIKE '2024-10%';

--most recent due_date of assignments with a status of "Completed".
SELECT MAX(due_date) 
FROM assignments
WHERE status = 'Completed';
--2025/03/20

--total number of assignments with a status of "Not Started"
SELECT COUNT(*)
FROM assignments
WHERE status = 'Not Started';
--9--

--find the course_id and course_name of courses that have lab sessions on Tuesday
SELECT course_id, course_name
FROM courses
WHERE lab_day LIKE 'Tue%';

--
