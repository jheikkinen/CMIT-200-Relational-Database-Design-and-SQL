--TruckInformation data
Insert into TruckInformation (TruckType, TruckBodyType, TruckLicenseNumber, TruckDescription, TruckEngineType, TruckFuelType, TruckCurrentMileage)
Values ('Long Haul', 'Tractor Trailer', 234678, 'Big Truck', 'Diesel', 'Diesel', 89750);

Insert into TruckInformation (TruckType, TruckBodyType, TruckLicenseNumber, TruckDescription, TruckEngineType, TruckFuelType, TruckCurrentMileage)
Values ('Short Haul', 'Single Unit', 278788, 'Small Truck', 'Diesel', 'Diesel', 54698);

Insert into TruckInformation (TruckType, TruckBodyType, TruckLicenseNumber, TruckDescription, TruckEngineType, TruckFuelType, TruckCurrentMileage)
Values ('Long Haul', 'Tractor Trailer', 354789, 'Big Truck', 'Diesel', 'Diesel', 120546);

Insert into TruckInformation (TruckType, TruckBodyType, TruckLicenseNumber, TruckDescription, TruckEngineType, TruckFuelType, TruckCurrentMileage)
Values ('Long Haul', 'Single Unit', 123987, 'Medium Truck', 'Diesel', 'Diesel', 48432);

Insert into TruckInformation (TruckType, TruckBodyType, TruckLicenseNumber, TruckDescription, TruckEngineType, TruckFuelType, TruckCurrentMileage)
Values ('Short Haul', 'Single Unit', 776523, 'Small Truck', 'Standard', '87', 134768);


--TruckMaintenance data
Insert into TruckMaintenance (TruckNumber, MaintenanceStartDate, MaintenanceEndDate, MaintenanceType, MaintenanceCode)
Values (1, '2021-11-01', '2021-11-02', 3, 1);

Insert into TruckMaintenance (TruckNumber, MaintenanceStartDate, MaintenanceEndDate, MaintenanceType, MaintenanceCode)
Values (2, '2021-11-05', '2021-11-14', 2, 2);

Insert into TruckMaintenance (TruckNumber, MaintenanceStartDate, MaintenanceEndDate, MaintenanceType, MaintenanceCode)
Values (3, '2021-10-18', '2021-11-02', 1, 2);

Insert into TruckMaintenance (TruckNumber, MaintenanceStartDate, MaintenanceEndDate, MaintenanceType, MaintenanceCode)
Values (4, '2021-10-01', '2021-10-03', 6, 1);

Insert into TruckMaintenance (TruckNumber, MaintenanceStartDate, MaintenanceEndDate, MaintenanceType, MaintenanceCode)
Values (5, '2021-10-15', '2021-10-21', 7, 2);


--driver data
Insert into drivers (Name, DateOfBirth, DateOfHire, CommercialDriverLicense, TruckNumber)
Values ('Tammylynn', '1980-04-10', '2001-07-15', 'yes', 1);

Insert into drivers (Name, DateOfBirth, DateOfHire, CommercialDriverLicense, TruckNumber)
Values ('Dusty', '1985-07-23', '2005-10-15', 'yes', 2);

Insert into drivers (Name, DateOfBirth, DateOfHire, CommercialDriverLicense, TruckNumber)
Values ('Amberlynn', '1986-10-14', '2010-06-11', 'yes', 3);

Insert into drivers (Name, DateOfBirth, DateOfHire, CommercialDriverLicense, TruckNumber)
Values ('Trevor', '1978-01-13', '1998-04-12', 'yes', 4);

Insert into drivers (Name, DateOfBirth, DateOfHire, CommercialDriverLicense, TruckNumber)
Values ('Larry', '1981-09-27', '1999-12-23', 'yes', 5);


--TrailerInformation data
Insert into TrailerInformation (TrailerType, TrailerCapacity, TrailerMileage, TrailerDescription, TruckNumber)
Values (3, 200, 58700, 'Big Trailer', 1);

Insert into TrailerInformation (TrailerType, TrailerCapacity, TrailerMileage, TrailerDescription, TruckNumber)
Values (2, 100, 69300, 'Small Trailer', 2);

Insert into TrailerInformation (TrailerType, TrailerCapacity, TrailerMileage, TrailerDescription, TruckNumber)
Values (1, 200, 88700, 'Big Trailer', 3);

Insert into TrailerInformation (TrailerType, TrailerCapacity, TrailerMileage, TrailerDescription, TruckNumber)
Values (4, 100, 46700, 'Small Trailer', 4);

Insert into TrailerInformation (TrailerType, TrailerCapacity, TrailerMileage, TrailerDescription, TruckNumber)
Values (3, 100, 101700, 'Small Trailer', 5);


--HaulRecord data
Insert into HaulRecord (TruckNumber, Client, CargoType, DateHaulBegan, DeliveryDate, Mileage, HaulNotes)
Values (1, 'Walmart', 4, '2021-11-05', '2021-11-05', 234, 'Short Haul');

Insert into HaulRecord (TruckNumber, Client, CargoType, DateHaulBegan, DeliveryDate, Mileage, HaulNotes)
Values (2, 'Tractor Supply Co.', 4, '2021-11-01', '2021-11-04', 1000, 'Long Haul');

Insert into HaulRecord (TruckNumber, Client, CargoType, DateHaulBegan, DeliveryDate, Mileage, HaulNotes)
Values (3, 'Exxon Mobil', 1, '2021-11-05', '2021-11-07', 500, 'Long Haul');

Insert into HaulRecord (TruckNumber, Client, CargoType, DateHaulBegan, DeliveryDate, Mileage, HaulNotes)
Values (4, 'Cracker Barrel', 3, '2021-11-06', '2021-11-06', 100, 'Short Haul');

Insert into HaulRecord (TruckNumber, Client, CargoType, DateHaulBegan, DeliveryDate, Mileage, HaulNotes)
Values (5, 'Nascar', 5, '2021-11-10', '2021-11-10', 150, 'Short Haul');


--HaulManifest
Insert into HaulManifest (HaulNumber, Item, ItemDescription, ItemWeightPerUnit, Quantity)
Values (1, 'Shirts', 'Flannel Shirts', 20, 10000);

Insert into HaulManifest (HaulNumber, Item, ItemDescription, ItemWeightPerUnit, Quantity)
Values (2, 'Tractors', 'John Deere Tractors', 300, 2);

Insert into HaulManifest (HaulNumber, Item, ItemDescription, ItemWeightPerUnit, Quantity)
Values (3, 'Gas', 'Gasoline', 100, 5000);

Insert into HaulManifest (HaulNumber, Item, ItemDescription, ItemWeightPerUnit, Quantity)
Values (4, 'Meat', 'Steaks and Chicken', 2, 1000);

Insert into HaulManifest (HaulNumber, Item, ItemDescription, ItemWeightPerUnit, Quantity)
Values (5, 'Car', 'Race Car', 2000, 1);


--LUTrailerType
Insert LUTrailerType (TrailerTypeDescription)
Values ('Tanker');

Insert LUTrailerType (TrailerTypeDescription)
Values ('Flat Bed');

Insert LUTrailerType (TrailerTypeDescription)
Values ('Box');

Insert LUTrailerType (TrailerTypeDescription)
Values ('Refrigerated');


--LUCargoType
Insert LUCargoType (CargoTypeDescription)
Values ('Hazardous');

Insert LUCargoType (CargoTypeDescription)
Values ('Liquid');

Insert LUCargoType (CargoTypeDescription)
Values ('Refrigerated');

Insert LUCargoType (CargoTypeDescription)
Values ('Standard');

Insert LUCargoType (CargoTypeDescription)
Values ('Other');

--LUMaintenanceType
Insert LUMaintenanceType (MaintenanceTypeDescription)
Values ('Engine');

Insert LUMaintenanceType (MaintenanceTypeDescription)
Values ('Transmission');

Insert LUMaintenanceType (MaintenanceTypeDescription)
Values ('Tires');

Insert LUMaintenanceType (MaintenanceTypeDescription)
Values ('Body');

Insert LUMaintenanceType (MaintenanceTypeDescription)
Values ('Electrical');

Insert LUMaintenanceType (MaintenanceTypeDescription)
Values ('Hydraulic');

Insert LUMaintenanceType (MaintenanceTypeDescription)
Values ('Pneumatic');


--LUMaintenanceCode
Insert LUMaintenanceCode (MaintenanceCodeDescription)
Values ('Routine');

Insert LUMaintenanceCode (MaintenanceCodeDescription)
Values ('Unscheduled');
