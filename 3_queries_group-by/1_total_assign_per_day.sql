/* 
Get the total number of assignments for each day of bootcamp.
 
 */

 SELECT day, count(name) as total_assignments
 from assignments
 group by day
 order by day asc;