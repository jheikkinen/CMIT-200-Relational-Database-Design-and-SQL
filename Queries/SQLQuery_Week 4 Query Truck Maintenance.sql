select MaintenanceStartDate, MaintenanceEndDate, MaintenanceType, TruckMaintenance.TruckNumber, TruckInformation.TruckType
	From TruckMaintenance
	Left Join TruckInformation
	On TruckMaintenance.TruckNumber = TruckInformation.TruckNumber
	Order by TruckType, MaintenanceStartDate;