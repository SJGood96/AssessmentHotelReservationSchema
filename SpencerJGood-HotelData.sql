USE HotelSoftwareGuild;

	-- Data for Guest --
INSERT INTO Guest (GuestID, FirstName, LastName, Address, City, State, Zip, Phone) 
	VALUES 
    (1, 'Spencer', 'Good','143 Amanda Street', 'Clyde', 'OH', '43410', '(419) 547 6644'),
    (2, 'Mack', 'Simmer', '379 Old Shore Street', 'Council Bluffs', 'IA', '51501', '(291) 553 0508'),
    (3,'Bettyann', 'Seery', '750 Wintergreen Dr,', 'Wasilla', 'AK', '9964', '(478) 277 9632'),
    (4,'Duane','Cullison','9662 Foxrun Lane','Harlingen','TX','78552','(308) 494 0198'),
    (5,'Karie','Yang','9378 W. Augusta Ave.','West Deptford','NJ','08096','(214) 730 0298'),
    (6,'Aurore','Lipton','762 Wild Rose Street','Saginaw','MI','48601','(377) 507 0974'),
    (7,'Zachery','Luechtefeld','7 Poplar Dr.','Arvada','CO','80003','(814) 485 2615'),
    (8,'Jeremiah','Pendergrass','70 Oakwood St.','Zion','IL','60099','(279) 491 0960'),
    (9,'Walter','Holaway','7556 Arrowhead St.','Cumberland','RI','02864','(446) 396 6785'),
    (10,'Wilfred','Vise','77 West Surrey Street','Oswego','NY','13126','(834) 727 1001'),
    (11,'Maritza','Tilton','939 Linda Rd.','Burke','VA','22015','(446) 351 6860'),
    (12,'Joleen','Tison','87 Queen St.','Drexel Hill','PA','19026','(231) 893 2755');
    
	-- Data Used for Amenities --    
INSERT INTO Amenities (AmenitiesID, AmenitiesName) 
	VALUES 
    (1, 'refrigerator'),
    (2, 'microwave'),
    (3, 'Jacuzzi'),
    (4, 'oven');
    
	-- Data used for RoomType --    
INSERT INTO RoomType (RType, StandOcc, MaxOcc)
	VALUES
    ('Single',2,2),
    ('Double',2,4),
    ('Suite',3,8);

    
	-- Data Used for Room --    
INSERT INTO Room (RoomID, RType, ADA, BasePrice, ExtraPerson) 
	VALUES 
    (201, 'Double', 'No', 199.99, 10),
    (202, 'Double', 'Yes', 174.99, 10),
    (203, 'Double', 'No', 199.99, 10),
    (204, 'Double', 'Yes', 174.99, 10),
    (205, 'Single', 'No', 174.99, 'NA'),
    (206, 'Single', 'Yes', 149.99,'NA'),
    (207, 'Single', 'No', 174.99,10),
    (208, 'Single', 'Yes', 149.99,'NA'),
    (301, 'Double', 'No', 199.99,10),
    (302, 'Double', 'Yes', 174.99,10),
    (303, 'Double', 'No', 199.99,10),
    (304, 'Double', 'Yes', 174.99,10),
    (305, 'Single', 'No', 174.99,'NA'),
    (306, 'Single', 'Yes', 149.99,'NA'),
    (307, 'Single', 'No', 174.99,'NA'),
    (308, 'Single', 'Yes', 149.99,'NA'),
    (401, 'Suite',  'Yes', 399.99, 20),
    (402, 'Suite', 'Yes', 399.99, 20); 
    
        -- Data used for Room_has_Amenities --
INSERT INTO Room_has_Amenities (Room_has_AmenitiesID, Room_RoomID, Amenities_AmenitiesID) VALUES 
	(1, 201, 1),
    (2, 201, 2),
    (3, 202, 1),
    (4, 203, 2),
    (5, 203, 3),
    (6, 204, 1),
    (7, 205, 1),
    (8, 205, 2),
    (9, 205, 3),
    (10, 206, 1),
    (11, 206, 2),
    (12, 207, 1),
    (13, 207, 2),
    (14, 207, 3), 
    (16, 208, 1),
    (17, 208, 2), 
    (18, 301, 2),
    (19, 301, 3),
    (20, 302, 1),
    (21, 303, 2),
    (22, 303, 3),
    (23, 304, 1),
    (24, 305, 1),
    (25, 305, 2),
    (26, 305, 3),
    (27, 306, 1),
    (28, 306, 2),
    (29, 307, 1),
    (30, 307, 2),
    (31, 307, 3),
    (32, 308, 1),
    (33, 308, 2),
    (34, 401, 1),
    (35, 401, 2),
    (36, 401, 4),
    (37, 402, 1),
    (38, 402, 2),
    (39, 402, 4);
    
    -- Data used for combining the Reservation and RoomID--


	-- Data used for Reservation --
INSERT INTO Reservation (GuestID, Adults, Children, StartDate, EndDate, TotalPrice) 
	VALUES 
    (2, 1, 0, '2023/02/02', '2023/02/04', 299.98),
    (3, 2, 1, '2023/02/05','2023/02/10', 999.95),
    (4, 2, 1, '2023/02/22', '2023/02/24', 349.98),
    (5, 2, 2, '2023/03/06', '2023/03/07', 199.98),
    (1, 1, 1, '2023/03/17', '2023/03/20',524.97),
    (6, 3, 0, '2023/03/18', '2023/03/28', 349.98),
    (7, 2, 2, '2023/03/29', '2023/03/31', 349.98),
    (8, 2, 0, '2023/03/31', '2023/04/05', 799.96),
    (9, 1, 0, '2023/04/09', '2023/04/13', 174.99),
    (10, 1, 1, '2023/04/23', '2023/04/24', 174.99),
    (11, 2, 4, '2023/05/30', '2023/06/02', 1199.97),
    (12, 2, 0, '2023/06/10', '2023/06/14', 599.96),
    (12, 1, 0, '2023/06/10', '2023/06/14', 599.96),
    (6, 3, 0, '2023/06/17', '2023/06/18', 184.99),
    (1, 2, 1, '2023/06/28', '2023/07/02', 699.96),
    (9, 3, 1, '2023/07/13', '2023/07/14', 184.99),
    (10, 4, 2, '2023/07/18', '2023/07/21', 1259.97),
    (3, 2, 1, '2023/07/28', '2023/07/29', 199.99),
    (3, 1, 0, '2023/08/30', '2023/09/01', 349.98), 
    (2, 2, 0, '2023/09/16', '2023/09/17', 149.99),
    (5, 2, 2, '2023/09/13', '2023/09/15', 399.98),
    (4, 2, 2, '2023/11/22', '2023/11/25', 1199.97),
    (2, 2, 0, '2023/11/22', '2023/11/25', 449.99),
    (2, 2, 2, '2023/11/22', '2023/11/25', 599.97),
    (11, 2, 0, '2023/12/24', '2023/12/28', 699.96);
    
    INSERT INTO Room_has_Reservation  (Room_Reservation_RoomID, Reservation_ReservationID) 
	VALUES
    (308, 1),
    (203, 2),
    (305, 3),
    (201, 4),
    (307, 5),
    (302, 6),
    (202, 7),
    (304, 8),
    (301, 9),
    (207, 10),
    (401, 11),
    (206, 12),
    (208, 12),
    (304, 14),
    (205, 15),
    (204, 16),
    (401, 17),
    (303, 18),
    (305, 19), 
    (208, 20),
    (203, 21),
    (401, 22),
    (206, 23),
    (301, 23),
    (302, 25);
    
    -- Deleting Jeremiah Pendergrass --

SET SQL_SAFE_UPDATES =0;
-- Deleting him from room has reservation --
DELETE FROM Room_has_Reservation
WHERE Reservation_ReservationID = 8;

-- Deleting him from reservation --
DELETE FROM Reservation
WHERE ReservationID = 8;

-- deleting him from guest --
DELETE FROM Guest
WHERE GuestID = 8;

SET SQL_SAFE_UPDATES = 1;
    
    
