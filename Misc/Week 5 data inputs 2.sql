--TruckInformation data
Insert into TruckInformation (TruckType, TruckBodyType, TruckLicenseNumber, TruckDescription, TruckEngineType, TruckFuelType, TruckCurrentMileage)
Values ('Short Haul', 'Tractor Trailer', 342678, 'Big Truck', 'Diesel', 'Diesel', 47890);

Insert into TruckInformation (TruckType, TruckBodyType, TruckLicenseNumber, TruckDescription, TruckEngineType, TruckFuelType, TruckCurrentMileage)
Values ('Long Haul', 'Single Unit', 145321, 'Small Truck', 'Standard', '87', 167098);

Insert into TruckInformation (TruckType, TruckBodyType, TruckLicenseNumber, TruckDescription, TruckEngineType, TruckFuelType, TruckCurrentMileage)
Values ('Long Haul', 'Tractor Trailer', 523653, 'Big Truck', 'Diesel', 'Diesel', 210654);

Insert into TruckInformation (TruckType, TruckBodyType, TruckLicenseNumber, TruckDescription, TruckEngineType, TruckFuelType, TruckCurrentMileage)
Values ('Short Haul', 'Single Unit', 384943, 'Medium Truck', 'Diesel', 'Diesel', 148532);

Insert into TruckInformation (TruckType, TruckBodyType, TruckLicenseNumber, TruckDescription, TruckEngineType, TruckFuelType, TruckCurrentMileage)
Values ('Short Haul', 'Single Unit', 823123, 'Medium Truck', 'Diesel', 'Diesel', 67576);


--TruckMaintenance data
Insert into TruckMaintenance (TruckNumber, MaintenanceStartDate, MaintenanceEndDate, MaintenanceType, MaintenanceCode)
Values (6, '2021-10-05', '2021-10-07', 5, 1);

Insert into TruckMaintenance (TruckNumber, MaintenanceStartDate, MaintenanceEndDate, MaintenanceType, MaintenanceCode)
Values (7, '2021-09-30', '2021-10-10', 2, 2);

Insert into TruckMaintenance (TruckNumber, MaintenanceStartDate, MaintenanceEndDate, MaintenanceType, MaintenanceCode)
Values (8, '2021-09-14', '2021-10-01', 6, 2);

Insert into TruckMaintenance (TruckNumber, MaintenanceStartDate, MaintenanceEndDate, MaintenanceType, MaintenanceCode)
Values (9, '2021-10-01', '2021-10-05', 3, 1);

Insert into TruckMaintenance (TruckNumber, MaintenanceStartDate, MaintenanceEndDate, MaintenanceType, MaintenanceCode)
Values (10, '2021-10-15', '2021-10-16', 1, 1);


--driver data
Insert into drivers (Name, DateOfBirth, DateOfHire, CommercialDriverLicense, TruckNumber)
Values ('Agnes', '1965-01-13', '1990-07-15', 'yes', 6);

Insert into drivers (Name, DateOfBirth, DateOfHire, CommercialDriverLicense, TruckNumber)
Values ('Betty', '1984-11-23', '2008-07-10', 'yes', 7);

Insert into drivers (Name, DateOfBirth, DateOfHire, CommercialDriverLicense, TruckNumber)
Values ('Earl', '1972-05-17', '1995-08-16', 'yes', 8);

Insert into drivers (Name, DateOfBirth, DateOfHire, CommercialDriverLicense, TruckNumber)
Values ('Floyd', '1979-06-23', '1997-03-01', 'yes', 9);

Insert into drivers (Name, DateOfBirth, DateOfHire, CommercialDriverLicense, TruckNumber)
Values ('Darlene', '1968-10-22', '1991-02-03', 'yes', 10);


--TrailerInformation data
Insert into TrailerInformation (TrailerType, TrailerCapacity, TrailerMileage, TrailerDescription, TruckNumber)
Values (3, 200, 100700, 'Big Trailer', 6);

Insert into TrailerInformation (TrailerType, TrailerCapacity, TrailerMileage, TrailerDescription, TruckNumber)
Values (4, 100, 34300, 'Small Trailer', 7);

Insert into TrailerInformation (TrailerType, TrailerCapacity, TrailerMileage, TrailerDescription, TruckNumber)
Values (1, 200, 120700, 'Big Trailer', 8);

Insert into TrailerInformation (TrailerType, TrailerCapacity, TrailerMileage, TrailerDescription, TruckNumber)
Values (2, 100, 68700, 'Small Trailer', 9);

Insert into TrailerInformation (TrailerType, TrailerCapacity, TrailerMileage, TrailerDescription, TruckNumber)
Values (3, 100, 150700, 'Small Trailer', 10);


--HaulRecord data
Insert into HaulRecord (TruckNumber, Client, CargoType, DateHaulBegan, DeliveryDate, Mileage, HaulNotes)
Values (6, 'Dollar General', 4, '2021-11-01', '2021-11-01', 153, 'Short Haul');

Insert into HaulRecord (TruckNumber, Client, CargoType, DateHaulBegan, DeliveryDate, Mileage, HaulNotes)
Values (7, 'Golden Corral', 3, '2021-11-01', '2021-11-06', 1400, 'Long Haul');

Insert into HaulRecord (TruckNumber, Client, CargoType, DateHaulBegan, DeliveryDate, Mileage, HaulNotes)
Values (8, 'Citgo', 1, '2021-11-02', '2021-11-07', 1000, 'Long Haul');

Insert into HaulRecord (TruckNumber, Client, CargoType, DateHaulBegan, DeliveryDate, Mileage, HaulNotes)
Values (9, 'Walmart', 4, '2021-11-05', '2021-11-05', 234, 'Short Haul');

Insert into HaulRecord (TruckNumber, Client, CargoType, DateHaulBegan, DeliveryDate, Mileage, HaulNotes)
Values (10, 'Nascar', 5, '2021-11-10', '2021-11-10', 150, 'Short Haul');


--HaulManifest
Insert into HaulManifest (HaulNumber, Item, ItemDescription, ItemWeightPerUnit, Quantity)
Values (6, 'Tupperware', 'Tupperware containers', 20, 1000);

Insert into HaulManifest (HaulNumber, Item, ItemDescription, ItemWeightPerUnit, Quantity)
Values (7, 'Meat', 'Steaks', 2, 1000);

Insert into HaulManifest (HaulNumber, Item, ItemDescription, ItemWeightPerUnit, Quantity)
Values (8, 'Gas', 'Gasoline', 100, 5000);

Insert into HaulManifest (HaulNumber, Item, ItemDescription, ItemWeightPerUnit, Quantity)
Values (9, 'Shirts', 'More Flannel Shirts', 20, 10000);

Insert into HaulManifest (HaulNumber, Item, ItemDescription, ItemWeightPerUnit, Quantity)
Values (10, 'Car', 'Back-up Race Car', 2000, 1);