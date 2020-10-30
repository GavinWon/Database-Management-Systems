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











