IF EXISTS(SELECT * FROM INFORMATION_SCHEMA.ROUTINES
	WHERE ROUTINE_NAME = 'DbReset')
		DROP PROCEDURE DbReset
GO

CREATE PROCEDURE DbReset AS
BEGIN

DELETE FROM BrickSetMinifigs;
DELETE FROM Minifigs;
DELETE FROM BrickSets;

DBCC CHECKIDENT (Minifigs, RESEED, 4)
DBCC CHECKIDENT (BrickSets, RESEED, 1)

SET IDENTITY_INSERT Minifigs ON;

INSERT INTO Minifigs(MinifigId, MinifigName, Description, MinifigImageFilename)
VALUES(1, 'Poe Dameron', 'Poe Dameron in X-Wing Flight suit', NULL),
(2, 'BB-8', 'Astromech Droid', '75102-BB8.jpg'),
(3, 'Resistance X-Wing Pilot', 'An X-Wing pilot', NULL),
(4, 'Resistance Ground Crew', 'An X-Wing mechanic', NULL),
(5, 'Jannah', 'Jannah from TROS', NULL),
(6, 'Knight of Ren', 'One of the Knights of Ren', NULL),
(7, 'R2-D2', 'It''s R2 FREAKING D2!!!', '75273-R2D2.jpg')

SET IDENTITY_INSERT Minifigs OFF;

SET IDENTITY_INSERT BrickSets ON;

INSERT INTO BrickSets(SetId, SetName, SetNumber, Weight, Length, Width, Height, ReleaseYear, PurchaseDate, CurrentValue, RetailPrice, NumberOfPieces, QuantityOwned, IsRetired, SetImageFileName)
VALUES(1, 'Poe''s X-Wing Fighter', 75102, 2.42, 18.9, 11.1, 2.4, 2015, '1/21/2015', 69, 79.99, 717, 2, 1, NULL),
(2, 'Poe Dameron''s X-wing Fighter', 75273, 2.2, 18.9, 11.1, 2.4, 2020, '1/21/2020', 59, 89.99, 761, 1, 1,'75273.jpg');

SET IDENTITY_INSERT BrickSets OFF;

INSERT INTO BrickSetMinifigs(MinifigId, SetId)
Values(1,1),
(2,1),
(3,1),
(4,1)

END
GO