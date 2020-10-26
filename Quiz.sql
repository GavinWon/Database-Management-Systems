Use cis55_31

/*Find the titles of courses in the Comp. Sci. department that have 3 credits.*/

Select title
from course
where dept_name = 'Comp. Sci.'
and credits = 3

/*Find the highest salary of any instructor*/

Select max(salary)
from instructor


Select ID, name
from instructor
where salary = (select max(salary) from instructor)
set salary = salary * 1.17
where dept_name = 'History'
where course_id not in
(select course_id from section)