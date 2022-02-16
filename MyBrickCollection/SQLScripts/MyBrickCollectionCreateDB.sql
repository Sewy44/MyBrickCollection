USE master
GO

IF EXISTS(SELECT * FROM sys.databases WHERE name ='MyBrickCollection')
DROP DATABASE MyBrickCollection
GO

CREATE DATABASE MyBrickCollection
GO