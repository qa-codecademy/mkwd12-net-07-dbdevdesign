CREATE DATABASE SEDC2
GO

USE SEDC2
GO

-- =============== RECAP - Table Relations ===============

CREATE TABLE [User] (
	Id INT IDENTITY PRIMARY KEY,
	Username NVARCHAR(50) NOT NULL,
	Password NVARCHAR(50) NOT NULL
)
GO

-- ====> One to One Relationship
-- one User can have one UserDetail (specific to that user)

CREATE TABLE UserDetails(
	Id INT IDENTITY PRIMARY KEY,
	UserId INT UNIQUE NOT NULL,
	FirstName NVARCHAR(100) NOT NULL,
	LastName NVARCHAR(100) NOT NULL,
	Email NVARCHAR(50) NOT NULL,
	PhoneNumber NVARCHAR(20) NULL,
	Age TINYINT NULL,
	CONSTRAINT FK_UserDetails_User FOREIGN KEY (UserId) REFERENCES [User](Id)
)
GO

-- ====> One to Many Relationship
-- one User can have multiple Posts (example Facebook posts)

CREATE TABLE Post (
	Id INT IDENTITY PRIMARY KEY,
	UserId INT NOT NULL,
	Title NVARCHAR(100) NOT NULL,
	Content NVARCHAR(MAX) NOT NULL,
	CONSTRAINT FK_Post_User FOREIGN KEY (UserId) REFERENCES [User](Id)
)
GO


-- ====> Many to Many Relationship
-- one user/student can have multiple courses
-- one course can have multiple users/students
-- direct 'Many to Many' relation isn't possible, so we create two 'One to Many' relations using middle table

CREATE TABLE Course(
	Id INT IDENTITY PRIMARY KEY,
	CourseName NVARCHAR(100) NOT NULL
)
GO

CREATE TABLE UserCourse(
	Id INT IDENTITY PRIMARY KEY,
	UserId INT NOT NULL,
	CourseId INT NOT NULL,
	CONSTRAINT FK_UserCourse_User FOREIGN KEY(UserId) REFERENCES [User](Id),
	CONSTRAINT FK_UserCourse_Course FOREIGN KEY(CourseId) REFERENCES Course(Id),
)
GO