-- Query 1 --
SELECT *
	FROM Reservation
	WHERE EndDate = '2023/07/02' OR EndDate = '2023/07/14' OR EndDate = '2023/07/21' OR EndDate = 2023/07/29;

-- Results of Query 1
-- 15	1	2	1	2023-06-28	2023-07-02	699.96
-- 16	9	3	1	2023-07-13	2023-07-14	184.99
-- 17	10	4	2	2023-07-18	2023-07-21	1259.97


-- Query 2 --
-- Query 2 --
SELECT 
	Guest.FirstName,
	Guest.LastName,
    Reservation.StartDate,
    Reservation.EndDate,
	ro.RoomID
    FROM Guest
    INNER JOIN Reservation ON Guest.GuestID=Reservation.GuestID
    INNER JOIN Room_has_Reservation ON Reservation.ReservationID=Room_has_Reservation.Reservation_ReservationID
    INNER JOIN Room ro ON Room_Reservation_RoomID=ro.RoomID
    INNER JOIN Room_has_Amenities ON Room_has_Reservation.Room_Reservation_RoomID=Room_has_Amenities.Room_RoomID
    INNER JOIN Amenities ON Room_has_Amenities.Amenities_AmenitiesID=Amenities.AmenitiesID
    WHERE Amenities.AmenitiesName = 'Jacuzzi';
    
-- Results --
-- Zachery	Luechtefeld	2023-03-29	2023-03-31	202


-- Query 3 --
SELECT 
	Guest.FirstName,
	Guest.LastName,
    Reservation.Adults,
    Reservation.Children,
    Reservation.StartDate,
    Reservation.ReservationID,
	Room_Reservation_RoomID
    FROM Guest
    LEFT JOIN Reservation ON Guest.GuestID=Reservation.GuestID
    RIGHT JOIN Room_has_Reservation ON Reservation.ReservationID=Room_has_Reservation.Reservation_ReservationID
    WHERE Guest.FirstName= 'Spencer' AND Guest.LastName= 'Good';

-- Spencer	Good	1	1	2023-03-17	5	307
-- Spencer	Good	2	1	2023-06-28	15	205

-- Query Four--
SELECT 
	Room.RoomID,
    Room.BasePrice,
   Room_has_Reservation.Reservation_ReservationID
		FROM Room
			LEFT JOIN Room_has_Reservation ON Room.RoomID=Room_has_Reservation.Room_Reservation_RoomID;
            
-- 201	199.99	4
-- 202	174.99	7
-- 203	199.99	2
-- 203	199.99	21
-- 204	174.99	16
-- 205	174.99	15
-- 206	149.99	12
-- 206	149.99	23
-- 207	174.99	10
-- 208	149.99	12
-- 208	149.99	20
-- 301	199.99	9
-- 301	199.99	23
-- 302	174.99	6
-- 302	174.99	25
-- 303	199.99	18
-- 304	174.99	14
-- 305	174.99	3
-- 305	174.99	19
-- 306	149.99	
-- 307	174.99	5
-- 308	149.99	1
-- 401	399.99	11
-- 401	399.99	17
-- 401	399.99	22
-- 402	399.99	


-- Query Five--
SELECT *
FROM Reservation
WHERE (Adults + Children > 3) AND (StartDate AND EndDate BETWEEN '2023/04/01' AND '2023/04/30');

-- Result are null
    










