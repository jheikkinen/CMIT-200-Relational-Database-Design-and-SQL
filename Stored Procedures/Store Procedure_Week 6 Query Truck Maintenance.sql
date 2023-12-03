CREATE Procedure MaintenanceReport(@MaintenanceStartDate1 date, @MaintenanceStartDate2 date)
AS
select TruckMaintenance.*, TruckInformation.TruckNumber From TruckMaintenance
	Left Join TruckInformation	
	On TruckMaintenance.TruckNumber = TruckInformation.TruckNumber
	Where MaintenanceStartDate Between @MaintenanceStartDate1 AND @MaintenanceStartDate2
	Order by TruckType, MaintenanceStartDate;