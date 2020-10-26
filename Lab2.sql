Create Table Empinfo
(
first nvarchar(50) NOT NULL,
last nvarchar(50) NOT NULL,
id int NOT NULL,
age int NOT NULL,
city nvarchar(50) NOT NULL,
state nvarchar(50) NOT NULL
)


Insert into Empinfo Values ('John', 'Jones', 99980, 45, 'Payson', 'Arizona')
Insert into Empinfo Values ('Mary', 'Jones', 99982, 25, 'Payson', 'Arizona')
Insert into Empinfo Values ('Eric', 'Edwards', 88232, 32, 'San Diego', 'California')
Insert into Empinfo Values ('Mary Ann', 'Edwards', 88233, 32, 'Phoenix', 'Arizona')
Insert into Empinfo Values ('Ginger', 'Howell', 98002, 42, 'Cottonwood', 'Arizona')
Insert into Empinfo Values ('Sebastian', 'Smith', 92001, 23, 'Gila Bend', 'Arizona')
Insert into Empinfo Values ('Gus', 'Gray', 22322, 35, 'Bagdad', 'Arizona')
Insert into Empinfo Values ('Mary Ann', 'May', 32326, 52, 'Tucson', 'Arizona')
Insert into Empinfo Values ('Erica', 'Williams', 32327, 60, 'Show Low', 'Arizona')
Insert into Empinfo Values ('Leroy', 'Brown', 32380, 22, 'Pinetop', 'Arizona')
Insert into Empinfo Values ('Elroy', 'Cleaver', 32382, 22, 'Globe', 'Arizona')


Select [first], [age] from Empinfo
Select [first], [last], [city] from Empinfo Where city != 'Payson'
Select * from Empinfo Where age > 40
Select [first], [last] from Empinfo Where last LIKE '%ay'
Select * from Empinfo Where first = 'Mary' 
Select * from Empinfo Where first LIKE 'Mary%' 


