/* 1. Write the SQL code that will create the table structure for a table named EMP_1. This table is a
subset of the EMPLOYEE table. The basic EMP_1 table structure is summarized in the table below.
(Note that the JOB_CODE is the FK to JOB.) */

CREATE TABLE [cis55_31].[dbo].[EMP_1] (
EMP_NUM char(3),
EMP_LNAME varchar(15),
EMP_FNAME char(15),
EMP_INITIAL char(1),
EMP_HIREDATE date,
JOB_CODE varchar(3)
);


/* 2. Having created the table structure in Problem 1, write the SQL code to enter the first two rows for the
table shown in Figure P7.2.*/

INSERT INTO [cis55_31].[dbo].[EMP_1] VALUES('101','News','John','G','11/8/2000','502');
INSERT INTO [cis55_31].[dbo].[EMP_1] VALUES('102','Senior','David','H','7/12/1989','501');


/* 3. Assuming the data shown in the EMP_1 table have been entered, write the SQL code that will list all
attributes for a job code of 502.*/

Select * from  [cis55_31].[dbo].[JOB]
Where JOB_CODE = 502


/* 4. Write the SQL code to change the job code to 501 for the person whose employee number
(EMP_NUM) is 107. After you have completed the task, examine the results, and then reset the job
code to its original value..*/

Update [cis55_31].[dbo].[EMPLOYEE]
Set JOB_CODE = 501
Where Emp_Num = 107

Update [cis55_31].[dbo].[EMPLOYEE]
Set JOB_CODE = 500
Where Emp_Num = 107



/* 5. Write the SQL code to delete the row for the person named William Smithfield, who was hired on
June 22, 2004, and whose job code classification is 500. (Hint: Use logical operators to include all of
the information given in this problem.)*/

Delete from [cis55_31].[dbo].[EMPLOYEE] 
Where EMP_LNAME = 'Smithfield' AND EMP_FNAME = 'William' AND EMP_HIREDATE = '6/22/2004' AND JOB_CODE = 500


/* 6. Write the SQL code to create a copy of EMP_1, naming the copy EMP_2. Then write the SQL code
that will add the attributes EMP_PCT and PROJ_NUM to its structure. The EMP_PCT is the bonus
percentage to be paid to each employee. The new attribute characteristics are:
EMP_PCTNUMBER(4,2)
PROJ_NUMCHAR(3)
(Note: If your SQL implementation allows it, you may use DECIMAL(4,2) rather than
NUMBER(4,2).)*/

SELECT *
INTO EMP_2
FROM EMP_1;

Alter Table Emp_2
Add EMP_PCT Decimal(4,2), PROJ_NUM varchar(3);


/* 7. Write the SQL code to change the EMP_PCT value to 3.85 for the person whose employee number
(EMP_NUM) is 103. Next, write the SQL command sequences to change the EMP_PCT values as
shown in Figure P7.9. */


Update [cis55_31].[dbo].[EMP_2]
Set EMP_PCT = 3.85
Where EMP_NUM = 103;


/* 8. Using a single command sequence, write the SQL code that will change the project number
(PROJ_NUM) to 18 for all employees whose job classification (JOB_CODE) is 500. */

Update [cis55_31].[dbo].[EMP_2]
Set PROJ_NUM = 18
Where JOB_CODE = 500;


/* 9. Using a single command sequence, write the SQL code that will change the project number
(PROJ_NUM) to 25 for all employees whose job classification (JOB_CODE) is 502 or higher. When
you finish Problems 10 and 11, the EMP_2 table will contain the data shown in Figure P7.11. (You
may assume that the table has been saved again at this point.) */

Update [cis55_31].[dbo].[EMP_2]
Set PROJ_NUM = 25
Where JOB_CODE >= 502;


/* 10. Write the SQL code that will change the PROJ_NUM to 14 for those employees who were hired
before January 1, 1994 and whose job code is at least 501. (You may assume that the table will be
restored to its condition preceding this question.)*/

Update [cis55_31].[dbo].[EMP_2]
Set PROJ_NUM = 14
Where JOB_CODE >= 501 AND EMP_HIREDATE < '1/1/1994'


/* 11. Write the two SQL command sequences required to:
	a. Create a temporary table named TEMP_1 whose structure is composed of the EMP_2 attributes
	EMP_NUM and EMP_PCT.
	b. Copy the matching EMP_2 values into the TEMP_1 table. */

CREATE TABLE #TEMP_1
( EMP_NUM varchar(3) NULL,  
  EMP_PCT Decimal(4,2) NULL  
);  
INSERT INTO #TEMP_1
    SELECT EMP_NUM, EMP_PCT  
    FROM [cis55_31].[dbo].[EMP_2];  


/* 12. Write the SQL command that will delete the newly created TEMP_1 table from the database.*/

Drop Table #TEMP_1;


/* 13. Write the SQL code required to list all employees whose last names start with Smith. In other words,
the rows for both Smith and Smithfield should be included in the listing. Assume case sensitivity. */

Select * from [cis55_31].[dbo].[EMPLOYEE]
Where EMP_LNAME LIKE 'Smith%'

