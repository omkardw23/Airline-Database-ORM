-- Store Procedure for Get Airlines Details:


CREATE PROCEDURE get_all_airlines

@id Varchar(20)

AS

SELECT * FROM AirlineProject.Airline WHERE airlineId = @id ;
GO

Exec get_all_airlines '10003';
