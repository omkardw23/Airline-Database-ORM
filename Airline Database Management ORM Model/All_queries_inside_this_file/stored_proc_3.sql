-- Store Procedure to Get Booking Details of Airlines:

CREATE PROCEDURE get_all_airlines_booking
(@id CHAR(20))

as
SELECT * FROM AirlineProject.Airline as A
left join  AirlineProject.Flight as B on A.flightId=B.flightId 
left join  AirlineProject.Ticket as C on B.passengerNr = C.passengerNr
where A.airlineid = @id;


exec get_all_airlines_booking '10003';
