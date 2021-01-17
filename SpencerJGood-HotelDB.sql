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
	Phone CHAR (11),
    PRIMARY KEY (GuestID));

CREATE TABLE IF NOT EXISTS Amenities (
	AmenitiesID INT NOT NULL auto_increment,
	AmenitiesName VARCHAR (45) NOT NULL,
    PRIMARY KEY (AmenitiesID));
    
CREATE TABLE IF NOT EXISTS RoomType (
	RTypeID INT NOT NULL,
    ADA VARCHAR (3) NOT NULL,
    StandOcc CHAR(1) NOT NULL, 
    MaxOcc Char(1) NOT NULL,
    PRIMARY KEY (RTypeID));
    
CREATE TABLE IF NOT EXISTS Room (
	RoomID INT NOT NULL auto_increment,
    RTypeID INT NOT NULL,
    ReservationID INT NOT NULL,
	BasePrice DECIMAL (5,2) NOT NULL,
	MaxPrice DECIMAL (5,2) NOT NULL,
	PRIMARY KEY (RoomID));

-- Adding Foreign keys --
ALTER TABLE Room
	ADD CONSTRAINT fk_RTypeID
	FOREIGN KEY (RTypeID) 
	REFERENCES RoomType (RTypeID); 


-- creation of the reservation table --
CREATE TABLE IF NOT EXISTS Reservation (
	ReservationID INT NOT NULL auto_increment,
    RoomID INT NOT NULL,
    GuestID INT NOT NULL,
	Adults VARCHAR(2) NOT NULL,
	Children VARCHAR(2) NOT NULL,
	StartDate DATE NOT NULL,
	EndDate DATE NOT NULL,
    PRIMARY KEY (ReservationID));

-- Adding Foreign Keys--
ALTER TABLE Reservation
	ADD CONSTRAINT fk_GuestID
	FOREIGN KEY (GuestID)
    REFERENCES Guest (GuestID);
    
ALTER TABLE Room
	ADD CONSTRAINT fk_ReservationID
    FOREIGN KEY (ReservationID)
    REFERENCES Reservation (ReservationID);

ALTER TABLE Reservation
	ADD CONSTRAINT fk_RoomID
	FOREIGN KEY (RoomID)
    REFERENCES Room (RoomID);
