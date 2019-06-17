 -- creating all the tables

CREATE TABLE Room (
	RoomNo INTEGER,
	Price INTEGER NOT NULL,
	NoOfBeds INTEGER NOT NULL,
	Kitchen CHAR(1) NOT NULL,
	Patio CHAR(1) NOT NULL,
	Handicap CHAR(1) NOT NULL,
	PrivatePool CHAR(1) NOT NULL,
	PRIMARY KEY(RoomNo)
);

CREATE TABLE Customer (
	CustomerID INTEGER,
	Name VARCHAR(50) NOT NULL,
	PhoneNo BIGINT NOT NULL,
	Email VARCHAR(50) NOT NULL,
	Address VARCHAR(50) NOT NULL,
	CreditCard BIGINT NOT NULL,
	NoOfAdults INTEGER,
	NoOfChildren INTEGER,
    PRIMARY KEY(CustomerID)	
);

CREATE TABLE Reservation_Makes (
	ReservationNo INTEGER,
	RoomNo INTEGER NOT NULL,
	CustomerID INTEGER NOT NULL,
	CheckInDate DATE NOT NULL,
	CheckOutDate DATE NOT NULL,
	PRIMARY KEY(ReservationNo),
	FOREIGN KEY(RoomNo) REFERENCES Room(RoomNo)
        ON DELETE CASCADE,
	FOREIGN KEY(CustomerID) REFERENCES Customer(CustomerID)
        ON DELETE CASCADE
);

CREATE TABLE EmergencyContact(
	EmergencyName VARCHAR(50),
	CustomerID INTEGER UNIQUE,
	PhoneNo BIGINT NOT NULL,
	RelationToCustomer VARCHAR(20),
	PRIMARY KEY(EmergencyName, CustomerID),
    FOREIGN KEY(CustomerID) REFERENCES Customer(CustomerID) 
        ON DELETE CASCADE
);

CREATE TABLE Salaries(
	Position VARCHAR(20),
	Wage REAL NOT NULL,
	PRIMARY KEY(Position)
);

CREATE TABLE Facility(
	FacilityName VARCHAR(30),
	Capacity INTEGER,
	OpeningHour INTEGER,
	ClosingHour INTEGER,
	PRIMARY KEY(FacilityName)
);

CREATE TABLE Employee_WorksAt(
	EmployeeID INTEGER,
	FacilityName VARCHAR(50),
	Name VARCHAR(50),
	Position VARCHAR(30),
	PRIMARY KEY(EmployeeID),
	FOREIGN KEY(Position) REFERENCES Salaries(Position)
        ON DELETE CASCADE,
    FOREIGN KEY(FacilityName) REFERENCES Facility(FacilityName)
);

CREATE TABLE ShuttleSchedule(
	Destination VARCHAR(50),
	DepartureTime INTEGER NOT NULL,
    ArrivalTime INTEGER NOT NULL,
    PRIMARY KEY(Destination)
);	

CREATE TABLE Vehicle(
	VehicleType VARCHAR(25),
	Capacity INTEGER NOT NULL,
	PRIMARY KEY(VehicleType)
);	

CREATE TABLE Transportation(
	TransportationID INTEGER,
	VehicleType VARCHAR(25),
	Destination VARCHAR(30),
	TDate DATE,
	PRIMARY KEY(TransportationID),
	FOREIGN KEY (VehicleType) REFERENCES Vehicle(VehicleType)
        ON DELETE CASCADE,
	FOREIGN KEY (Destination) REFERENCES ShuttleSchedule(Destination)
        ON DELETE CASCADE
);

CREATE TABLE Buys(
	CustomerID INTEGER,
	TransportationID INTEGER,
	TicketID INTEGER UNIQUE NOT NULL,
	PRIMARY KEY(CustomerID, TransportationID),
	FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID) 
        ON DELETE CASCADE,
	FOREIGN KEY (TransportationID) REFERENCES Transportation(TransportationID)
		ON DELETE CASCADE
);

CREATE TABLE HousekeepingAndMaintenance(
	EmployeeID INTEGER,
	AssignedFloor INTEGER,
    PRIMARY KEY(EmployeeID),
	FOREIGN KEY(EmployeeID) REFERENCES Employee_WorksAt(EmployeeID) 
        ON DELETE CASCADE
);

CREATE TABLE Maintenance_Record(
	CaseNo INTEGER,
	EmployeeID INTEGER NOT NULL,
    MDate DATE,
    Completed CHAR(1) NOT NULL,
    PRIMARY KEY(CaseNo),
    FOREIGN KEY(EmployeeID) REFERENCES Employee_WorksAt(EmployeeID) 
        ON DELETE CASCADE
);

CREATE TABLE Equipment(
	EquipmentID INTEGER,
	FacilityName VARCHAR(50) NOT NULL,
	CurrentlyRented CHAR(1) NOT NULL,
	Type VARCHAR(15) NOT NULL,
	PRIMARY KEY(EquipmentID),
	FOREIGN KEY(FacilityName) REFERENCES Facility(FacilityName)
        ON DELETE CASCADE
);

CREATE TABLE Instructor_Instructs(
	EmployeeID INTEGER,
	YearsOfExperience INTEGER,
    PRIMARY KEY(EmployeeID),
	FOREIGN KEY(EmployeeID) REFERENCES Employee_WorksAt(EmployeeID) 
        ON DELETE CASCADE
);

CREATE TABLE Lifeguard_Guards(
    EmployeeID INTEGER,
    StationNo INTEGER NOT NULL UNIQUE,
    PRIMARY KEY(EmployeeID),
	FOREIGN KEY(EmployeeID) REFERENCES Employee_WorksAt(EmployeeID) 
        ON DELETE CASCADE
);

CREATE TABLE Rents(
	CustomerID INTEGER,
	EquipmentID INTEGER,
	PRIMARY KEY(CustomerID, EquipmentID),
	FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID) 
        ON DELETE CASCADE,
	FOREIGN KEY (EquipmentID) REFERENCES Equipment(EquipmentID) 
        ON DELETE CASCADE
);

CREATE TABLE Provides(
	EmployeeID INTEGER,
	TransportationID INTEGER,
	PRIMARY KEY(EmployeeID, TransportationID),
	FOREIGN KEY (EmployeeID) REFERENCES Employee_WorksAt(EmployeeID)
        ON DELETE CASCADE,
	FOREIGN KEY (TransportationID) REFERENCES Transportation(TransportationID)
        ON DELETE CASCADE
);

commit;