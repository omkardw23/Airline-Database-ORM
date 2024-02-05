USE master;
GO

SELECT al.name AS 'Airline Name',COUNT(al.name) AS 'Number of tickets booked for them'
FROM AirlineProject.Passenger AS psngr 
	JOIN AirlineProject.Employee AS emp ON (psngr.passengerNr = emp.passengerNr)
	JOIN AirlineProject.Airport AS a ON (emp.employeeId = a.employeeId)
	JOIN AirlineProject.Airline AS al ON (al.airlineId = a.airlineId)
GROUP BY al.name;