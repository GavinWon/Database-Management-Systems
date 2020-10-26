Use cis55_31

Select * from instructor Where dept_name = 'Biology'

Select * from course Where dept_name = 'Comp. Sci.' and credits = 3

Select takes.course_id, title
from takes
Inner JOIN course
ON takes.course_id = course.course_id
Where takes.ID = 12345


Select SUM(credits) as TotalCredit
from takes
Inner JOIN course
ON takes.course_id = course.course_id
Where takes.ID = 12345

Select ID, SUM(credits) as TotalCredit
from takes
Inner JOIN course
ON takes.course_id = course.course_id
Group By ID

Select Distinct ID
from takes
Where takes.course_ID LIKE 'CS%'

Select instructor.ID
from teaches
RIGHT JOIN instructor
ON instructor.ID = teaches.ID
Where course_id IS NULL

Select instructor.name, instructor.ID
from teaches
RIGHT JOIN instructor
ON instructor.ID = teaches.ID
Where course_id IS NULL

Create VIEW CSInstructors AS
Select ID, name, dept_name
from instructor
Where dept_name = 'Comp. Sci.';


