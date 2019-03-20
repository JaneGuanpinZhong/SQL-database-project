SET SQL_SAFE_UPDATES = 0;
set foreign_key_checks=0;
DELETE FROM Bill;
DELETE FROM Equipment;
DELETE FROM Patient;
INSERT INTO Patient (PID, DATE_of_birth, Emergence_contact_info, Phone_number, 18_or_not, Address, Name, Assessment_Id)
VALUES (1, '2001-07-03', '(272)-375-3506', 123, 1, '9113 Highbrook Drive, Dunedin, Marlborough, 84498', 'Quinn Jackson', 1);
INSERT INTO Patient (PID, DATE_of_birth, Emergence_contact_info, Phone_number, 18_or_not, Address, Name, Assessment_Id)
VALUES (2, '2003-08-03', '(613)-554-3096', 124, 1, '8217 Fatih Sultan Mehmet Cd, Bolu, Bilecik, 85598', 'Louisa Gonzalez', 2);
INSERT INTO Patient (PID, DATE_of_birth, Emergence_contact_info, Phone_number, 18_or_not, Address, Name)
VALUES (3, '2005-07-11', '(283)-746-3029', 125, 1, '7485 Spring Hill Rd, West Valley, Kansas, 83498', 'Chad Hall');
INSERT INTO Equipment (Item_identifing_ID, Name, Cost, Type) VALUES (756, "Gait Belts", 15, "Single Use");
INSERT INTO Equipment (Item_identifing_ID, Name, Cost, Type) VALUES (354, "Armboard Strap", 5, "Reuseable");
INSERT INTO Bill (Bill_id, PID, Used_item_ID, Dept_ID) VALUES (1, 1, 354, 1);
INSERT INTO Bill (Bill_id, PID, Used_item_ID, Dept_ID) VALUES (2, 2, 756, 1);
INSERT INTO Bill (Bill_id, PID, Used_item_ID, Dept_ID) VALUES (3, 3, 354, 2);
INSERT INTO Bill (Bill_id, PID, Used_item_ID, Dept_ID) VALUES (4, 1, 354, 1);
INSERT INTO Bill (Bill_id, PID, Used_item_ID, Dept_ID) VALUES (5, 1, 354, 1);
INSERT INTO Bill (Bill_id, PID, Used_item_ID, Dept_ID) VALUES (6, 3, 354, 3);
SELECT * FROM
	Patient, Bill, Equipment
	WHERE Patient.PID = Bill.PID AND
	Bill.Used_Item_ID = Equipment.Item_identifing_ID;
SET foreign_key_checks=1;
SET SQL_SAFE_UPDATES = 1;
