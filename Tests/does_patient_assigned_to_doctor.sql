SET SQL_SAFE_UPDATES = 0;
set foreign_key_checks=0;
DELETE FROM Patient;
DELETE FROM Service_Provider;
DELETE FROM Consult;
INSERT INTO Patient (PID, DATE_of_birth, Emergence_contact_info, Phone_number, 18_or_not, Address, Name, Assessment_Id)
VALUES (1, '2001-07-03', '(272)-375-3506', 123, 1, '9113 Highbrook Drive, Dunedin, Marlborough, 84498', 'Quinn Jackson', 1);
INSERT INTO Patient (PID, DATE_of_birth, Emergence_contact_info, Phone_number, 18_or_not, Address, Name, Assessment_Id)
VALUES (2, '2003-08-03', '(613)-554-3096', 124, 1, '8217 Fatih Sultan Mehmet Cd, Bolu, Bilecik, 85598', 'Louisa Gonzalez', 2);
INSERT INTO Patient (PID, DATE_of_birth, Emergence_contact_info, Phone_number, 18_or_not, Address, Name)
VALUES (3, '2005-07-11', '(283)-746-3029', 125, 1, '7485 Spring Hill Rd, West Valley, Kansas, 83498', 'Chad Hall');
INSERT INTO Service_Provider (Employee_ID, Service_provider_ID, name) VALUES (1, 12345, 'Ryan Gosling');
INSERT INTO Service_Provider (Employee_ID, Service_provider_ID, name) VALUES (2, 23456, 'Emma Stone');
INSERT INTO Service_Provider (Employee_ID, Service_provider_ID, name) VALUES (3, 34567, 'Andrew Garfield');
INSERT INTO Consult (Employee_ID, Service_provider_ID, PID) VALUES (1, 12345, 1);
INSERT INTO Consult (Employee_ID, Service_provider_ID, PID) VALUES (2, 23456, 2);
INSERT INTO Consult (Employee_ID, Service_provider_ID, PID) VALUES (2, 23456, 3);
SET foreign_key_checks=1;
SET SQL_SAFE_UPDATES = 1;
