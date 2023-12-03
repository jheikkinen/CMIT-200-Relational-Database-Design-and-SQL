Create Procedure TrailerInfoDelete(@TrailerNumber int)
AS
Delete from TrailerInformation
Where TrailerNumber = @TrailerNumber;

GO

Create Procedure TruckInfoDelete(@TruckNumber int)
AS
Delete from TruckInformation
Where TruckNumber = @TruckNumber;

GO

Create Procedure TruckMaintDelete(@MaintNumber int)
AS
Delete from TruckMaintenance
Where MaintenanceNumber = @MaintNumber;

GO

Create Procedure DriverDelete(@EmployeeNumber int)
AS
Delete from drivers
Where EmployeeNumber = @EmployeeNumber;

GO

Create Procedure HaulRecordDelete(@HaulNumber int)
AS
Delete from HaulRecord
Where HaulNumber = @HaulNumber;

GO

Create Procedure HaulManifestDelete(@ItemNumber int)
AS
Delete from HaulManifest
Where ItemNumber = @ItemNumber;

GO

Create Procedure LUTrailerTypeDelete(@TrailerTypeID int)
AS
Delete from LUTrailerType
Where TrailerTypeID = @TrailerTypeID;

GO

Create Procedure LUMaintenanceTypeDelete(@MaintenanceTypeID int)
AS
Delete from LUMaintenanceType
Where MaintenanceTypeID = @MaintenanceTypeID;

GO

Create Procedure LUMaintenanceCodeDelete(@MaintenanceCodeID int)
AS
Delete from LUMaintenanceCode
Where MaintenanceCodeID = @MaintenanceCodeID;

GO

Create Procedure LUCargoTypeDelete(@CargoTypeID int)
AS
Delete from LUCargoType
Where CargoTypeID = @CargoTypeID;