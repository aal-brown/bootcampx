/* 
Get the total amount of time that all students from a specific cohort have spent on all assignments.

So essentially, for a specified cohort, with x students, add up the assignment time duration for each student and then sum that up for the cohort.

Break down the problem
we need to determine all the students that are in a specific cohort and get all of their id's. We will then join this with the assignments table ON those id's

 */
/* Let's start by getting all of the student_id's in the cohort that will be a join statement.*/


/* 
SELECT SUM(assignment_submissions.duration) AS total_duration
FROM students
JOIN assignment_submissions
ON students.id = assignment_submissions.student_id
WHERE students.id IN (SELECT students.id
FROM students
JOIN cohorts
ON students.cohort_id = cohorts.id
WHERE cohorts.name = 'FEB12'); 


The code above is the same as:
*/
SELECT SUM(assignment_submissions.duration) AS total_duration
FROM assignment_submissions
JOIN students ON assignment_submissions.student_id = students.id
JOIN cohorts ON students.cohort_id = cohorts.id
WHERE cohorts.name = 'FEB12';