USE master;
GO

SELECT passengerNr, COUNT(employeeId) AS 'Number of passengers attending' FROM AirlineProject.Employee GROUP BY passengerNr;