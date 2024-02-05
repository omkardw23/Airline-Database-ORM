USE master;
GO

IF OBJECT_ID('AirlineProject.PassengerInstance_View') IS NOT NULL
DROP VIEW. AirlineProject.PassengerInstance_View;
GO

CREATE VIEW AirlineProject.PassengerInstance_View
AS SELECT distinct
p.PersonId, P.name, Pr.passengerNr, Pr.BooksTicketNr, T.dateYmd as date 
from  AirlineProject.Person P
inner join AirlineProject.Passenger Pr on P.PersonId = Pr.PersonId
inner join AirlineProject.Ticket T on Pr.PassengerNr = T.PassengerNr
GO

select * From AirlineProject.PassengerInstance_View
GO

SELECT Concat('The passenger ',F.name ,' has booked a ticket for flight with the ticket number : ',F.BooksTicketNr,' on ', F.date) as PassengerInstanceView
FROM  AirlineProject.PassengerInstance_View AS F
GO