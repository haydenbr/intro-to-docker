USE master
GO
IF NOT EXISTS (
   SELECT name
   FROM sys.databases
   WHERE name = N'TutorialDB'
)
CREATE DATABASE [TutorialDB]
GO

-- Create a new table called 'Employee' in schema 'dbo'
-- Drop the table if it already exists
IF OBJECT_ID('dbo.Employee', 'U') IS NOT NULL
DROP TABLE dbo.Employee
GO
-- Create the table in the specified schema
CREATE TABLE dbo.Employee
(
	EmployeeId INT NOT NULL IDENTITY PRIMARY KEY,
	[Name] [NVARCHAR](50) NOT NULL,
	Location [NVARCHAR](50) NOT NULL
);
GO

INSERT INTO dbo.Employee
   ([Name],[Location])
VALUES
   ( N'Jared', N'Australia'),
   ( N'Nikita', N'India'),
   ( N'Tom', N'Germany'),
   ( N'Jake', N'United States')

SELECT COUNT(*) as EmployeeCount FROM dbo.Employee;
SELECT e.EmployeeId, e.Name, e.Location 
FROM dbo.Employee as e
GO