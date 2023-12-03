CREATE Procedure TruckInfoInsert(@TruckType varchar(10), @TruckBodyType varchar(15), @TruckLicenseNumber int,
 @TruckDescription varchar(255), @TruckEngineType varchar(50), @TruckFuelType varchar(50), @TruckCurrentMileage int)
AS
Insert into TruckInformation
Values (@TruckType, @TruckBodyType, @TruckLicenseNumber,
 @TruckDescription, @TruckEngineType, @TruckFuelType, @TruckCurrentMileage)

Go

CREATE Procedure TruckMaintInsert(@TruckNumber int, @MaintenanceStartDate date, @MaintenanceEndDate date,
 @MaintenanceType int, @MaintenanceCode int)
AS
Insert into TruckMaintenance
Values (@TruckNumber, @MaintenanceStartDate, @MaintenanceEndDate,
 @MaintenanceType, @MaintenanceCode);

 GO

 CREATE Procedure DriverInsert(@Name varchar(20), @DateOfBirth date, @DateOfHire date, 
 @CommercialDriverLicense varchar(3), @TruckNumber int)
AS
Insert into drivers
Values (@Name, @DateOfBirth, @DateOfHire, 
 @CommercialDriverLicense, @TruckNumber);

 GO

CREATE Procedure TrailerInfoInsert(@TrailerType int, @TrailerCapacity int, @TrailerMileage int,
 @TrailerDescription varchar(50), @TruckNumber int)
AS
Insert into TrailerInformation
Values (@TrailerType, @TrailerCapacity, @TrailerMileage,
 @TrailerDescription, @TruckNumber);

 GO

CREATE Procedure HaulRecordInsert(@TruckNumber int, @Client varchar(20), @CargoType int, @DateHaulBegan date,
 @DeliveryDate date, @Mileage int, @HaulNotes varchar(50))
AS
Insert into HaulRecord
Values (@TruckNumber, @Client, @CargoType, @DateHaulBegan,
 @DeliveryDate, @Mileage, @HaulNotes);

 GO

CREATE Procedure HaulManifestInsert(@HaulNumber int, @Item varchar(20), @ItemDescription varchar(50),
 @ItemWeightPerUnit int, @Quantity int)
AS
Insert into HaulManifest
Values (@HaulNumber, @Item, @ItemDescription,
 @ItemWeightPerUnit, @Quantity);

 GO

CREATE Procedure LUTrailerTypeInsert(@TrailerTypeDescription varchar(20))
AS
Insert into LUTrailerType
Values (@TrailerTypeDescription);

GO

CREATE Procedure LUMaintenanceTypeInsert(@MaintenanceTypeDescription varchar(20))
AS
Insert into LUMaintenanceType
Values (@MaintenanceTypeDescription);

GO

CREATE Procedure LUMaintenanceCodeInsert(@MaintenanceCodeDescription varchar(20))
AS
Insert into LUMaintenanceCode
Values (@MaintenanceCodeDescription);

GO

CREATE Procedure LUCargoTypeInsert(@CargoTypeDescription varchar(20))
AS
Insert into LUCargoType
Values (@CargoTypeDescription);