-- populating the tables

INSERT INTO Room(RoomNo, Price, NoOfBeds, Kitchen, Patio, Handicap, PrivatePool) 
VALUES(500, 100, 1, 'N', 'N', 'Y', 'N');

INSERT INTO Room VALUES(501, 100, 1, 'N', 'N', 'N', 'N');

INSERT INTO Room VALUES(502, 300, 2, 'Y', 'N', 'Y', 'N');

INSERT INTO Room VALUES(503, 200, 2, 'N', 'N', 'N', 'N');

INSERT INTO Room VALUES(504, 400, 4, 'Y', 'Y', 'N', 'Y');

commit;

INSERT INTO Customer(CustomerID, Name, PhoneNo, Email, Address, CreditCard, NoOfAdults, NoOfChildren) 
VALUES (001, 'Alex Bank', 6041112222, 'alex.bank@gmail.com', '2757 Oak St. Halifax NS N7S B32 Canada', 1221233234434554, 1, 0);
 
INSERT INTO Customer 
VALUES (002, 'Cathy Dong', 6043334444, 'cathy.dong@gmail.com', '856 Groot Rd. San Jose CA 95052 USA', 2112677678878998, 1, 1);
 
INSERT INTO Customer
VALUES (003, 'Edwin Fin', 6045556666, 'edwin.fin@gmail.com', '1230 Asif Rd. Carmiel Israel', 3223122143349889, 2, 0);
 
INSERT INTO Customer
 VALUES (004, 'Gavin Hawk', 6047778888, 'gavin.hawk@gmail.com', '9230 San Thomas Ave. Miami FL 468292 USA', 5445677654451221, 2, 1);
 
INSERT INTO Customer
VALUES (005, 'Ian Jade', 6049990000, 'ian.jade@gmail.com', '2134 Cambie St. Vancouver BC V6S 2F5 Canada', 5445677654451221, 2, 2);

commit;

-- NOTE: our default DATE format in ORACLE is: DD-MONTH-YYYY, e.g. 04-DECEMBER-1998
-- NOTE: our default DATE format in MySQL is: YYYY-MM-YY, e.g. 1998-12-04

-- INSERT INTO Reservation_Makes VALUES(77777, 500, 001, '05-MAY-2019', '06-JUNE-2019');
INSERT INTO Reservation_Makes VALUES(77777, 500, 001, '2019-05-05', '2019-06-06');

-- INSERT INTO Reservation_Makes VALUES(44444, 502, 004, '07-JUNE-2019', '10-JUNE-2019');
INSERT INTO Reservation_Makes VALUES(44444, 502, 004, '2019-06-07', '2019-06-10');
 
-- INSERT INTO Reservation_Makes VALUES(22222, 503, 002, '19-JULY-2019', '31-JULY-2019');
INSERT INTO Reservation_Makes VALUES(22222, 503, 002, '2019-07-19', '2019-07-31');
 
-- INSERT INTO Reservation_Makes VALUES(33333, 501, 005, '23-AUGUST-2019', '28-AUGUST-2019');
INSERT INTO Reservation_Makes VALUES(33333, 504, 003, '2019-08-23', '2019-08-28');
 
-- INSERT INTO Reservation_Makes VALUES(11111, 501, 005, '23-AUGUST-2019', '30-AUGUST-2019');
INSERT INTO Reservation_Makes VALUES(11111, 504, 003, '2019-09-23', '2019-09-30');

commit;

INSERT INTO EmergencyContact(EmergencyName, CustomerID, PhoneNo, RelationToCustomer) 
VALUES ('Anna Bank', 001, 7780001111, 'Mother');
 
INSERT INTO EmergencyContact
VALUES ('Caden Dong', 002, 7781112222, 'Father');
 
INSERT INTO EmergencyContact
VALUES ('Edna Fin', 003, 7782223333, 'Aunt');
 
INSERT INTO EmergencyContact
VALUES ('Gerry Hawk', 004, 7783334444, 'Uncle');
 
INSERT INTO EmergencyContact
VALUES ('Irina Jowski', 005, 7784445555, 'Friend');

commit;

INSERT INTO Salaries(Position, Wage) VALUES ('Lifeguard', 18.00);
 
INSERT INTO Salaries(Position, Wage) VALUES ('Instructor', 18.00);
 
INSERT INTO Salaries(Position, Wage) VALUES ('FrontDesk', 13.00);
 
INSERT INTO Salaries(Position, Wage) VALUES ('Manager', 25.00);
 
INSERT INTO Salaries(Position, Wage) VALUES ('HouseKeeper', 16.00);

INSERT INTO Salaries(Position, Wage) VALUES ('Repairperson', 18.00);

INSERT INTO Salaries(Position, Wage) VALUES ('Driver', 13.00);

commit;

INSERT INTO Facility(FacilityName, Capacity, OpeningHour, ClosingHour) VALUES('Pool', 100, 0700, 0000);
 
INSERT INTO Facility VALUES('Beach1', 100, 0600, 2200);
 
INSERT INTO Facility VALUES('Gym1', 50, 0600, 2300);
 
INSERT INTO Facility VALUES('Gym2', 30, 0900, 1800);
 
INSERT INTO Facility VALUES('Beach2', 200, 0800, 2200);

INSERT INTO Facility VALUES('Transport', 50, 0800, 2200);

INSERT INTO Facility VALUES('HousekeepingAndMaintenance', NULL, NULL, NULL);

commit;

INSERT INTO Employee_WorksAt(EmployeeID, FacilityName, Name, Position) VALUES (10, 'Pool', 'Archie', 'Lifeguard');
 
INSERT INTO Employee_WorksAt VALUES (20, 'Pool', 'Brianne', 'Instructor');
 
INSERT INTO Employee_WorksAt VALUES (30, 'Gym1', 'Carrie', 'Instructor');
 
INSERT INTO Employee_WorksAt VALUES (40, 'Gym2', 'Daniel', 'Instructor');
 
INSERT INTO Employee_WorksAt VALUES (50, 'Beach1', 'Elaine', 'Lifeguard');

INSERT INTO Employee_WorksAt VALUES (60, 'Gym1', 'Finn', 'Instructor');

INSERT INTO Employee_WorksAt VALUES (70, 'Pool', 'Greg', 'Instructor');

INSERT INTO Employee_WorksAt VALUES (80, 'Pool', 'Harry', 'Lifeguard');

INSERT INTO Employee_WorksAt VALUES (90, 'Beach2', 'Ivanka', 'Lifeguard');

INSERT INTO Employee_WorksAt VALUES (100, 'Beach2', 'Jessica', 'Lifeguard');

INSERT INTO Employee_WorksAt VALUES (110, 'Transport', 'Ken', 'Driver');

INSERT INTO Employee_WorksAt VALUES (120, 'Transport', 'Lenny', 'Driver');

INSERT INTO Employee_WorksAt VALUES (130, 'Transport', 'Monica', 'Driver');

INSERT INTO Employee_WorksAt VALUES (140, 'Transport', 'Nancy', 'Driver');

INSERT INTO Employee_WorksAt VALUES (150, 'Transport', 'Ophelia', 'Driver');

INSERT INTO Employee_WorksAt VALUES (160, 'HousekeepingAndMaintenance', 'Pete', 'HouseKeeper');

INSERT INTO Employee_WorksAt VALUES (170, 'HousekeepingAndMaintenance', 'Quinn', 'Repairperson');

INSERT INTO Employee_WorksAt VALUES (180, 'HousekeepingAndMaintenance', 'Rory', 'HouseKeeper');

INSERT INTO Employee_WorksAt VALUES (190, 'HousekeepingAndMaintenance', 'Santa', 'Repairperson');

INSERT INTO Employee_WorksAt VALUES (200, 'HousekeepingAndMaintenance', 'Tim', 'HouseKeeper');

commit;

INSERT INTO ShuttleSchedule(Destination, DepartureTime, ArrivalTime) VALUES ('Squamish', 0800, 1000);
 
INSERT INTO ShuttleSchedule(Destination, DepartureTime, ArrivalTime) VALUES ('Gastown', 0800, 0830);
 
INSERT INTO ShuttleSchedule(Destination, DepartureTime, ArrivalTime) VALUES ('Whistler', 0800, 1000);
 
INSERT INTO ShuttleSchedule(Destination, DepartureTime, ArrivalTime) VALUES ('Stanley Park', 0800, 0830);
 
INSERT INTO ShuttleSchedule(Destination, DepartureTime, ArrivalTime) VALUES ('Cypress', 0800, 0930);

commit;

INSERT INTO Vehicle(VehicleType, Capacity) VALUES ('MidSized Van', 8);
 
INSERT INTO Vehicle(VehicleType, Capacity) VALUES ('Small Van', 6);
 
INSERT INTO Vehicle(VehicleType, Capacity) VALUES ('LargeVan', 12);
 
INSERT INTO Vehicle(VehicleType, Capacity) VALUES ('Coach', 50);
 
INSERT INTO Vehicle(VehicleType, Capacity) VALUES ('SmallBus', 20);

commit;

-- INSERT INTO Transportation VALUES (111, 'MidSized Van', 'Squamish', '10-JULY-2019');
INSERT INTO Transportation VALUES (111, 'MidSized Van', 'Squamish', '2019-07-10');
 
-- INSERT INTO Transportation VALUES (222, 'Small Van', 'Gastown', '20-JULY-2019');
INSERT INTO Transportation VALUES (222, 'Small Van', 'Gastown', '2019-07-20');
 
-- INSERT INTO Transportation VALUES (333, 'LargeVan', 'Whistler', '10-AUGUST-2019');
INSERT INTO Transportation VALUES (333, 'LargeVan', 'Whistler', '2019-08-10');

-- INSERT INTO Transportation VALUES (444, 'Coach', 'Stanley Park', '20-AUGUST-2019');
INSERT INTO Transportation VALUES (444, 'Coach', 'Stanley Park', '2019-08-20');
 
-- INSERT INTO Transportation VALUES (555, 'SmallBus', 'Cypress', '10-SEPTEMBER-2019');
INSERT INTO Transportation VALUES (555, 'SmallBus', 'Cypress', '2019-09-10');

commit;

INSERT INTO Buys(CustomerID, TransportationID, TicketID) VALUES(001, 111, 100);
 
INSERT INTO Buys(CustomerID, TransportationID, TicketID) VALUES(002, 222, 200);
 
INSERT INTO Buys(CustomerID, TransportationID, TicketID) VALUES(003, 333, 300);
 
INSERT INTO Buys(CustomerID, TransportationID, TicketID) VALUES(004, 444, 400);
 
INSERT INTO Buys(CustomerID, TransportationID, TicketID) VALUES(005, 555, 500);

commit; 

INSERT INTO HousekeepingAndMaintenance(EmployeeID, AssignedFloor) VALUES(160, 1);

INSERT INTO HousekeepingAndMaintenance(EmployeeID, AssignedFloor) VALUES(170, 2);

INSERT INTO HousekeepingAndMaintenance(EmployeeID, AssignedFloor) VALUES(180, 3);

INSERT INTO HousekeepingAndMaintenance(EmployeeID, AssignedFloor) VALUES(190, 4);

INSERT INTO HousekeepingAndMaintenance(EmployeeID, AssignedFloor) VALUES(200, 5);

commit; 

INSERT INTO Maintenance_Record(CaseNo, EmployeeID, MDate, Completed) VALUES(1, 160, '2019-05-02', 'N');
			
INSERT INTO Maintenance_Record(CaseNo, EmployeeID, MDate, Completed) VALUES(2, 170, '2019-05-03', 'Y');

INSERT INTO Maintenance_Record(CaseNo, EmployeeID, MDate, Completed) VALUES(3, 190, '2019-05-04', 'N');

INSERT INTO Maintenance_Record(CaseNo, EmployeeID, MDate, Completed) VALUES(4, 200, '2019-05-05', 'Y');

INSERT INTO Maintenance_Record(CaseNo, EmployeeID, MDate, Completed) VALUES(5, 190, '2019-05-06', 'N');

commit;

INSERT INTO Equipment(EquipmentID, FacilityName, CurrentlyRented, Type) VALUES (1, 'Pool', 'N', 'Goggles');
 
INSERT INTO Equipment VALUES (2, 'Beach1', 'Y', 'AirMattress');
 
INSERT INTO Equipment VALUES (3, 'Gym1', 'Y', 'Roller');
 
INSERT INTO Equipment VALUES (4, 'Gym2', 'N', 'Locker');
 
INSERT INTO Equipment VALUES (5, 'Beach2', 'N', 'Volleyball');

commit;

INSERT INTO Instructor_Instructs(EmployeeID, YearsOfExperience) VALUES (60, 3);
 
INSERT INTO Instructor_Instructs(EmployeeID, YearsOfExperience) VALUES (20, 4);
 
INSERT INTO Instructor_Instructs(EmployeeID, YearsOfExperience) VALUES (30, 5);
 
INSERT INTO Instructor_Instructs(EmployeeID, YearsOfExperience) VALUES (40, 4);
 
INSERT INTO Instructor_Instructs(EmployeeID, YearsOfExperience) VALUES (70, 3);

commit;

INSERT INTO Lifeguard_Guards(EmployeeID, StationNo) VALUES (10, 1);
 
INSERT INTO Lifeguard_Guards(EmployeeID, StationNo) VALUES (50, 2);
 
INSERT INTO Lifeguard_Guards(EmployeeID, StationNo) VALUES (80, 3);
 
INSERT INTO Lifeguard_Guards(EmployeeID, StationNo) VALUES (90, 4);
 
INSERT INTO Lifeguard_Guards(EmployeeID, StationNo) VALUES (100, 5);

commit;

INSERT INTO Rents(CustomerID, EquipmentID) VALUES (001, 1);
 
INSERT INTO Rents(CustomerID, EquipmentID) VALUES (002, 2);
 
INSERT INTO Rents(CustomerID, EquipmentID) VALUES (003, 3);
 
INSERT INTO Rents(CustomerID, EquipmentID) VALUES (004, 4);
 
INSERT INTO Rents(CustomerID, EquipmentID) VALUES (005, 5);

commit;

INSERT INTO Provides(EmployeeID, TransportationID) VALUES (110, 111);
 
INSERT INTO Provides(EmployeeID, TransportationID) VALUES (120, 222);
 
INSERT INTO Provides(EmployeeID, TransportationID) VALUES (130, 333);
 
INSERT INTO Provides(EmployeeID, TransportationID) VALUES (140, 444);
 
INSERT INTO Provides(EmployeeID, TransportationID) VALUES (150, 555);

commit;
