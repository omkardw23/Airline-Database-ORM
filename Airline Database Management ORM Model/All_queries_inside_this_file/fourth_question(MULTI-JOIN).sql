USE master;
GO

SELECT c.name AS 'Cities Visited City',COUNT(c.name) AS 'Number of times visited'
FROM AirlineProject.Passenger AS psngr 
	JOIN AirlineProject.Employee AS emp ON (psngr.passengerNr = emp.passengerNr)
	JOIN AirlineProject.Airport AS a ON (emp.employeeId = a.employeeId)
	JOIN AirlineProject.City AS c ON (a.airportId = c.airportId)
GROUP BY c.name;


