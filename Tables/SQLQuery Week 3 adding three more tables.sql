Create table TrailerInformation (
	TrailerNumber int not null Primary Key,
	TrailerType varchar(15) not null,
	TrailerCapacity int not null,
	TrailerMileage int not null,
	TrailerDescription varchar(50),
	TruckNumber int not null,
-- Values that are only allowed for Trailer Type.
	Constraint chk_TT CHECK (TrailerType IN ('Tanker', 'Flat Bed', 'Box', 'Refrigerated')),
-- Foreign Key for truck number between TruckInformation and TrailerInformation tables
	Constraint FK_TNumber2 Foreign Key (TruckNumber)
	References TruckInformation(TruckNumber)
)

Create table HaulRecord (
	HaulNumber int not null Primary Key,
	TruckNumber int not null,
	Client varchar(20) not null,
	CargoType varchar(15),
	DateHaulBegan date not null,
	DeliveryDate date not null,
	Mileage int not null,
	HaulNotes varchar(50),
-- Values that are only allowed for Cargo Type.
	Constraint chk_CT CHECK (CargoType IN ('Hazardous', 'Liquid', 'Refrigerated', 'Standard', 'Other')),
-- Foreign Key for truck number between TruckInformation and HaulRecord tables
	Constraint FK_TNumber3 Foreign Key (TruckNumber)
	References TruckInformation(TruckNumber)
)

create table HaulManifest (
	ItemNumber int not null Primary Key,
	HaulNumber int not null,
	Item varchar(20) not null,
	ItemDescription varchar(50),
	ItemWeightPerUnit int,
	Quantity int not null,
-- Foreign Key for haul number between HaulRecord and HaulManifest tables
	Constraint FK_HaulNumber Foreign Key (HaulNumber)
	References HaulRecord(HaulNumber)
)