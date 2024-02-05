USE master;
GO

ALTER PROC getPassengersbyDate
	@dateOfFlight DATETIME
AS
	SELECT p.name AS 'Passengers'
	FROM AirlineProject.Ticket AS t 
	JOIN AirlineProject.Passenger AS psngr ON (t.passengerNr = psngr.passengerNr)
	JOIN AirlineProject.Person AS p ON (psngr.personId = p.personId)
	WHERE t.dateYmd = @dateOfFlight

