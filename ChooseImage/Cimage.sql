CREATE DATABASE CImage
GO
DROP DATABASE CImage
USE CImage
GO

CREATE TABLE Pictures(
	id int identity primary key,
	[image] VARBINARY(MAX)
)
GO
DROP Table Pictures

