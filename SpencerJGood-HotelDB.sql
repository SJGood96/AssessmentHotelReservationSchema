-- Destruction of the Database --
DROP DATABASE HotelSoftwareGuild;

-- Creation of the HotelSoftwareGuild database -- 
CREATE DATABASE IF NOT EXISTS HotelSoftwareGuild;

USE HotelSoftwareGuild;

-- Creation of the Tables -- 
CREATE TABLE IF NOT EXISTS Guest(
	GuestID INT NOT NULL auto_increment,
	FirstName VARCHAR(45) NOT NULL,
	LastName VARCHAR (45) NOT NULL,
	Address VARCHAR (45) NOT NULL,
	City VARCHAR (45) NOT NULL,
	State CHAR(2) NOT NULL,
	Zip CHAR (5),
	Phone CHAR (14),
    PRIMARY KEY (GuestID));
    
-- Creation of the Amenities table -- 

CREATE TABLE IF NOT EXISTS Amenities (
	AmenitiesID INT NOT NULL,
	AmenitiesName VARCHAR (45) NOT NULL,
    PRIMARY KEY (AmenitiesID));
    
-- Creation of the RoomType Table --     
    
CREATE TABLE IF NOT EXISTS RoomType (
	RType VARCHAR (6) NOT NULL,
    StandOcc CHAR(1) NOT NULL, 
    MaxOcc Char(1) NOT NULL,
    PRIMARY KEY (RType));

    -- Creation of the Room table --
    
CREATE TABLE IF NOT EXISTS Room (
	RoomID INT NOT NULL,
    RType VARCHAR (6) NOT NULL,
    ADA VARCHAR (3) NOT NULL,
	BasePrice DECIMAL (5,2) NOT NULL,
    ExtraPerson VARCHAR (2) NOT NULL,
	PRIMARY KEY (RoomID));

-- Adding Foreign keys --
ALTER TABLE Room
	ADD CONSTRAINT fk_RType
	FOREIGN KEY (RType) 
	REFERENCES RoomType (RType) ON DELETE NO ACTION; 

CREATE TABLE IF NOT EXISTS Room_has_Amenities (
Room_RoomID INT NOT NULL,
Amenities_AmenitiesID INT NOT NULL,
PRIMARY KEY (Room_RoomID, Amenities_AmenitiesID));


-- Adding Foreign keys --
ALTER TABLE Room_has_Amenities
	ADD CONSTRAINT fk_Room_RoomID
	FOREIGN KEY (Room_RoomID) 
	REFERENCES Room (RoomID) ON DELETE NO ACTION;
    
Alter TABLE Room_has_Amenities
	ADD CONSTRAINT fk_Amenities_AmenitiesID
    FOREIGN KEY (Amenities_AmenitiesID)
    REFERENCES Amenities (AmenitiesID);
    
-- creation of the reservation table --
CREATE TABLE IF NOT EXISTS Reservation (
	ReservationID INT NOT NULL auto_increment,
    GuestID INT NOT NULL,
	Adults VARCHAR(2) NOT NULL,
	Children VARCHAR(2) NOT NULL,
	StartDate DATE NOT NULL,
	EndDate DATE NOT NULL,
    TotalPrice DECIMAL(7,2) NOT NULL,
    PRIMARY KEY (ReservationID));

-- Adding Foreign Keys--
ALTER TABLE Reservation
	ADD CONSTRAINT fk_GuestID
	FOREIGN KEY (GuestID)
    REFERENCES Guest (GuestID)ON DELETE NO ACTION;


CREATE TABLE IF NOT EXISTS Room_has_Reservation (
Room_Reservation_RoomID INT NOT NULL,
Reservation_ReservationID INT NOT NULL,
PRIMARY KEY (Room_Reservation_RoomID, Reservation_ReservationID));

ALTER TABLE Room_has_Reservation
	ADD CONSTRAINT fk_Reservation_ReservationID
	FOREIGN KEY (Reservation_ReservationID) 
	REFERENCES Reservation (ReservationID) ON DELETE NO ACTION;
    
Alter TABLE Room_has_Reservation
	ADD CONSTRAINT fk_Room_Reservation_RoomID
    FOREIGN KEY (Room_Reservation_RoomID)
    REFERENCES Room (RoomID) ON DELETE NO ACTION;
