--trigger that checks if airplane seats are taken


CREATE TRIGGER CheckIfUnique_mydata_value ON AirlineProject.Ticket
AFTER insert, update
AS
BEGIN
--check if we passed multiple values
  IF EXISTS(SELECT 1 FROM inserted GROUP BY ticketNr HAVING COUNT(*) > 1)
  BEGIN
    RAISERROR('You tried to insert a duplicate value within the result set. Ensure you only pass unique values!', 16,1)
  END
  --check if we inserted a value that already exists that is not me (works for updates on me too!)
  IF EXISTS(SELECT 1 FROM AirlineProject.Passenger m INNER JOIN inserted i ON m.booksticketNr = i.ticketNr ) --AND m.id <> i.id)
  BEGIN
    RAISERROR('Duplicate Value found',16,1)
  END
END;





INSERT INTO AirlineProject.Ticket
VALUES (CURRENT_TIMESTAMP,24153,1111);
