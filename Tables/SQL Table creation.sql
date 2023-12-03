create Table TruckInformation (
	TruckType varchar(10) not null,
	TruckBodyType varchar(15) not null,
	TruckNumber int not null Primary Key,
	TruckLicenseNumber int,
	TruckDescription varchar(255),
	TruckEngineType varchar(50),
	TruckFuelType varchar(50),
	TruckCurrentMileage int not null,
-- Values that are only allowed for Truck Type and Body Type.
	Constraint chk_TType CHECK (TruckType IN ('Long Haul', 'Short Haul')),
	Constraint chk_TBType CHECK (TruckBodyType IN ('Tractor Trailer', 'Single Unit'))
)

create Table TruckMaintenance (
	TruckNumber int not null,
	MaintenanceNumber int not null Primary Key,
	MaintenanceStartDate date not null,
	MaintenanceEndDate date not null,
	MaintenanceType varchar(20) not null,
	MaintenanceCode varchar(12)  not null,
-- Values that are only allowed for Maintenance code and Type.
	Constraint chk_MCode CHECK (MaintenanceCode IN ('Routine', 'Unscheduled')),
	Constraint chk_MType CHECK (MaintenanceType IN ('Engine', 'Transmission', 'Tires', 'Body', 'Electrical', 'Hydraulic', 'Pneumatic')),
-- Foreign Key for truck number between TruckInformation and TruckMaintenance tables
	Constraint FK_TNumber Foreign Key (TruckNumber)
	References TruckInformation(TruckNumber)
)

Create Table drivers(
	Name varchar(20) not null,
	DateOfBirth date not null,
	EmployeeNumber int not null Primary Key,
	DateOfHire date not null,
	CommercialDriverLicense varchar(3) not null,
	TruckNumber int not null,
-- Values that are only allowed for Commercial Driver License.
	Constraint chk_CDL CHECK (CommercialDriverLicense IN ('yes', 'no')),
-- Foreign Key for truck number between TruckInformation and drivers tables
	Constraint FK_TNumber1 Foreign Key (TruckNumber)
	References TruckInformation(TruckNumber)
)