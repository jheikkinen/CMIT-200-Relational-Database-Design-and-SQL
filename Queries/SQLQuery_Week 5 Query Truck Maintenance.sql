select TruckMaintenance.*, TruckInformation.TruckNumber From TruckMaintenance
	Left Join TruckInformation	
	On TruckMaintenance.TruckNumber = TruckInformation.TruckNumber
	Where MaintenanceStartDate Between '2021-10-10' AND '2021-11-10'
	Order by TruckType, MaintenanceStartDate;