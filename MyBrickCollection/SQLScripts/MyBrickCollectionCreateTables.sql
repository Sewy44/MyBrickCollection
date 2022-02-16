USE MyBrickCollection

GO

IF EXISTS(SELECT * FROM sys.tables WHERE name='BrickSetMinifigs')
	DROP TABLE BrickSetMinifigs
GO

IF EXISTS(SELECT * FROM sys.tables WHERE name='Minifigs')
	DROP TABLE Minifigs
GO

IF EXISTS(SELECT * FROM sys.tables WHERE name='BrickSets')
	DROP TABLE BrickSets
GO

CREATE TABLE Minifigs(
MinifigId int identity primary key,
MinifigName varchar(50) NOT NULL,
Description varchar(200) NOT NULL,
MinifigImageFileName varchar(100) Null
)

CREATE TABLE BrickSets(
SetId int identity primary key,
SetName varchar(100) NOT NULL,
SetNumber int NOT NULL,
Weight decimal(3,0) NOT NULL,
Length decimal(6,2) NOT NULL,
Width decimal(6,2) NOT NULL,
Height decimal(6,2) NOT NULL,
ReleaseYear int NOT NULL,
PurchaseDate datetime2 NOT NULL,
CurrentValue decimal(8,2) NULL,
RetailPrice decimal(8,2) NOT NULL,
NumberOfPieces int NOT NULL,
QuantityOwned int NOT NULL,
IsRetired bit NOT NULL,
SetImageFileName varchar(200) NULL
)

CREATE TABLE BrickSetMinifigs(
SetId int NOT NULL,
MinifigId int NOT NULL
CONSTRAINT pk_BrickSetMinifigs PRIMARY KEY(SetId, MinifigId),
CONSTRAINT fk_BrickSetMinifigs_BrickSets FOREIGN KEY (SetId)
	REFERENCES BrickSets(SetId),
CONSTRAINT fk_BrickSetMinifigs_Minifigs FOREIGN KEY (MinifigId)
	REFERENCES Minifigs(MinifigId)
);

