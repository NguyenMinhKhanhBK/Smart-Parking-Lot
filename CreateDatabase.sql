create database DemoCarParkingLot
go

use DemoCarParkingLot
go

create table BlackList
(
	ID bigint identity(1,1) primary key,
	DisplayName nvarchar(max),
	LicensePlate nvarchar(50),
	PhoneNumber nvarchar(20)
)
go

create table Fee
(
	ID int identity(1,1) primary key,
	DisplayName nvarchar(max),
	Fee real
)
go


create table PositionStatus
(
	ID int identity(1,1) primary key,
	PositionStatus nvarchar(200)
)	
go

create table UserType
(
	ID int identity(1,1) primary key,
	UserType nvarchar(max)
)
go



create table Users
(
	ID bigint identity(1,1) primary key,
	DisplayName nvarchar(max),
	Username nvarchar(max),
	Password nvarchar(max),
	LicensePlate nvarchar(50),
	UserTypeID int
	
	foreign key	(UserTypeID) references UserType(ID)
)
go

create table BuildingInfo
(
	ID int identity(1,1) primary key,
	DisplayName nvarchar(MAX),
	Location nvarchar(max),
	Longtitude real,
	Latitude real,
	Url nvarchar(MAX)
)
go

create table Building
(
	ID int primary key,
	SumAvail int
	
	foreign key (ID) references BuildingInfo(ID)
)
go

create table Block
(
	ID int identity(1,1) primary key,
	DisplayName nvarchar(MAX)
)
go

create table CarParkingLayout
(
	ID int identity(1,1) primary key,
	BuildingID int,
	BlockID int,
	PositionID int,
	StatusID int,
	UserID bigint,
	LicensePlate nvarchar(50),
	ReservedTime DateTime,
	ArrivalTime DateTime
	
	foreign key (BuildingID) references BuildingInfo(ID),
	foreign key (BlockID) references Block(ID),
	foreign key (UserID) references Users(ID),
	foreign key (StatusID) references PositionStatus(ID)
)
go