USE master;
GO

CREATE TRIGGER autoAddPassenger
	ON AirlineProject.Person
	AFTER INSERT
AS
	DECLARE @insertedPersonID int
	SELECT @InsertedPersonID = i.personid
	FROM inserted AS i

	DECLARE @newPassengerID int
	SET @newPassengerID = @insertedPersonID * 5
	INSERT INTO AirlineProject.Passenger
	VALUES (@newPassengerID,@insertedPersonID,NULL,NULL);

