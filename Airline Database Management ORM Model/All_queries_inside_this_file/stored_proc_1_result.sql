USE master;
GO
DECLARE @StartDate DATETIME
SET @StartDate = CONVERT(DATETIME,'2022-01-01 06:00:00.000')

EXEC getPassengersbyDate @startDate;