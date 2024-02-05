USE master;
GO


SELECT aircraftModelId, COUNT(airlineId) AS 'Number of Airlines using this model' FROM
AirlineProject.Airline GROUP BY aircraftModelId;