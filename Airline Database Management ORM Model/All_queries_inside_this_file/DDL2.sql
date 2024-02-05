USE master;
GO

INSERT INTO AirlineProject.AircraftModel
VALUES (21342),(23421),(12342),(64756),(33526);

INSERT INTO AirlineProject.Person
VALUES (132,N'Omkar'),(234,N'Aishwarya'),(123,N'Amar'),(647,N'Harshal'),(335,N'Soumya');

INSERT INTO AirlineProject.Passenger
VALUES (24153,132,1111,NULL),(34251,234,2222,NULL),(67583,123,3333,NULL);

INSERT INTO AirlineProject.Flight
VALUES (12345,24153),(23456,34251),(34567,67583);

INSERT INTO AirlineProject.Ticket
VALUES (CURRENT_TIMESTAMP,24153,1111);

INSERT INTO AirlineProject.Ticket
VALUES ('2022-12-24 08:00:00.000',34251,2222);

INSERT INTO AirlineProject.Ticket
VALUES ('2022-12-15 08:00:00.000',67583,3333);

INSERT INTO AirlineProject.Employee
VALUES (87968,647,24153),(65769,335,34251);

INSERT INTO AirlineProject.Airline
VALUES (10001,'Air India',21342,12345),(10002,'American Air',23421,34567),(10003,'Luftansa',12342,23456);

INSERT INTO AirlineProject.Airport
VALUES (00012,'Phoenix Airport',10002,87968), (00045,'JFK Airport',10003,65769);

INSERT INTO AirlineProject.City
VALUES (10,'Phoenix',00012), (20,'New York',00045);

INSERT INTO AirlineProject.AircraftModel
VALUES (25183),(74637),(49302),(38475),(26648);

INSERT INTO AirlineProject.Person
VALUES (101,'Tommy'),(202,'Arthur'),(303,'John'),(404,'Finn'),(505,'Micheal'),(606,'Orochi');

INSERT INTO AirlineProject.Passenger
VALUES (46574,101,4444,NULL),(57488,202,5555,NULL),(60098,303,6666,NULL);

INSERT INTO AirlineProject.Flight
VALUES (54321,46574),(65432,57488),(76543,60098);

INSERT INTO AirlineProject.Ticket
VALUES ('2022-01-01 06:00:00.000',46574,4444);

INSERT INTO AirlineProject.Ticket
VALUES ('2022-01-01 06:00:00.000',57488,5555);

INSERT INTO AirlineProject.Ticket
VALUES ('2022-01-02 04:00:00.000',60098,6666);

INSERT INTO AirlineProject.Employee
VALUES (73737,404,46574),(65656,505,57488),(89898,606,60098);

INSERT INTO AirlineProject.Airline
VALUES (10004,'United Airlines',25183,54321),(10005,'ANA',74637,65432),(10006,'Vistara',49302,76543);

INSERT INTO AirlineProject.Airport
VALUES (00035,'LA Intl Airport',10004,73737), (00094,'Heathrow Airport',10006,65656), (00077,'Tokyo Airport',10005,89898);

INSERT INTO AirlineProject.City
VALUES (30,'Los Angeles',00035), (40,'London',00094), (50,'Tokyo',00077);