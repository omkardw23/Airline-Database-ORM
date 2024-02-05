CREATE SCHEMA AirlineProject
GO

GO


CREATE TABLE AirlineProject.City
(
	cityId int CHECK (cityId >= 0) NOT NULL,
	name nchar(20) NOT NULL,
	airportId int CHECK (airportId >= 0),
	CONSTRAINT City_PK PRIMARY KEY(cityId)
)
GO


CREATE TABLE AirlineProject.Airport
(
	airportId int CHECK (airportId >= 0) NOT NULL,
	name nchar(20) NOT NULL,
	airlineId int CHECK (airlineId >= 0),
	employeeId int CHECK (employeeId >= 0),
	CONSTRAINT Airport_PK PRIMARY KEY(airportId)
)
GO


CREATE TABLE AirlineProject.Airline
(
	airlineId int CHECK (airlineId >= 0) NOT NULL,
	name nchar(20) NOT NULL,
	aircraftModelId int,
	flightId int CHECK (flightId >= 0),
	CONSTRAINT Airline_PK PRIMARY KEY(airlineId)
)
GO


CREATE TABLE AirlineProject.Employee
(
	employeeId int CHECK (employeeId >= 0) NOT NULL,
	personId int CHECK (personId >= 0) NOT NULL,
	passengerNr int,
	CONSTRAINT Employee_PK PRIMARY KEY(employeeId),
	CONSTRAINT Employee_UC UNIQUE(personId)
)
GO


CREATE TABLE AirlineProject.Flight
(
	flightId int CHECK (flightId >= 0) NOT NULL,
	passengerNr int,
	CONSTRAINT Flight_PK PRIMARY KEY(flightId)
)
GO


CREATE TABLE AirlineProject.Passenger
(
	passengerNr int NOT NULL,
	personId int CHECK (personId >= 0) NOT NULL,
	booksTicketNr int,
	cancelsTicketNr int,
	CONSTRAINT Passenger_PK PRIMARY KEY(passengerNr),
	CONSTRAINT Passenger_UC UNIQUE(personId)
)
GO


CREATE TABLE AirlineProject.Ticket
(
	dateYmd datetime NOT NULL,
	passengerNr int NOT NULL,
	ticketNr int NOT NULL,
	CONSTRAINT Ticket_PK PRIMARY KEY(passengerNr, ticketNr, dateYmd)
)
GO


CREATE TABLE AirlineProject.Person
(
	personId int CHECK (personId >= 0) NOT NULL,
	name nchar(20) NOT NULL,
	CONSTRAINT Person_PK PRIMARY KEY(personId)
)
GO


CREATE TABLE AirlineProject.AircraftModel
(
	aircraftModelId int NOT NULL,
	CONSTRAINT AircraftModel_PK PRIMARY KEY(aircraftModelId)
)
GO


ALTER TABLE AirlineProject.City ADD CONSTRAINT City_FK FOREIGN KEY (airportId) REFERENCES AirlineProject.Airport (airportId) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


ALTER TABLE AirlineProject.Airport ADD CONSTRAINT Airport_FK1 FOREIGN KEY (airlineId) REFERENCES AirlineProject.Airline (airlineId) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


ALTER TABLE AirlineProject.Airport ADD CONSTRAINT Airport_FK2 FOREIGN KEY (employeeId) REFERENCES AirlineProject.Employee (employeeId) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


ALTER TABLE AirlineProject.Airline ADD CONSTRAINT Airline_FK1 FOREIGN KEY (flightId) REFERENCES AirlineProject.Flight (flightId) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


ALTER TABLE AirlineProject.Airline ADD CONSTRAINT Airline_FK2 FOREIGN KEY (aircraftModelId) REFERENCES AirlineProject.AircraftModel (aircraftModelId) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


ALTER TABLE AirlineProject.Employee ADD CONSTRAINT Employee_FK1 FOREIGN KEY (passengerNr) REFERENCES AirlineProject.Passenger (passengerNr) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


ALTER TABLE AirlineProject.Employee ADD CONSTRAINT Employee_FK2 FOREIGN KEY (personId) REFERENCES AirlineProject.Person (personId) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


ALTER TABLE AirlineProject.Flight ADD CONSTRAINT Flight_FK FOREIGN KEY (passengerNr) REFERENCES AirlineProject.Passenger (passengerNr) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


ALTER TABLE AirlineProject.Passenger ADD CONSTRAINT Passenger_FK FOREIGN KEY (personId) REFERENCES AirlineProject.Person (personId) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


ALTER TABLE AirlineProject.Ticket ADD CONSTRAINT Ticket_FK FOREIGN KEY (passengerNr) REFERENCES AirlineProject.Passenger (passengerNr) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


GO