USE University
-- שאלה 1
select * FROM Students

-- שאלה 2
select FirstName, LastName FROM Students

-- שאלה 3
select DISTINCT FirstName FROM Students

-- שאלה 4
select FirstName FROM Students
where Age<80

-- שאלה 5
select * FROM Students
where id=1

-- שאלה 6
select id FROM Students
where FirstName='Ami' and LastName='Sason'

-- שאלה 7
select * FROM Students
where (FirstName='Ami' or FirstName='Yael') and Age>20

-- שאלה 8
select * FROM Students
where Age IS NULL

-- שאלה 9
select * FROM Students
where Age IS NOT NULL

-- שאלה 10
select FirstName FROM Students 
order by FirstName ASC

-- שאלה 11
select * FROM Students
order by Age DESC

-- שאלה 12
select TOP 2 * FROM Students 
order by Age DESC

-- שאלה 13
select * FROM Students
where FirstName LIKE 'A%' and Age>20
order by FirstName

-- שאלה 14
INSERT INTO Courses (CourseName)
VALUES ('Gaming')

-- שאלה 15
UPDATE Students
SET Age=70
where age>80

-- שאלה 16
DELETE FROM Students
where Id=4

-- שאלה 17
select cs.CourseId , c.CourseName, cs.StudentId, (s.FirstName + ' ' + s.LastName) AS 'Full Name', cs.Grade 
FROM CoursesStudents cs
join Courses c on cs.CourseId = c.Id
join Students s on s.Id = cs.StudentId