--Deleting data from tables
Delete from TrailerInformation
Where TrailerNumber < 100;

Delete from TruckInformation
Where TruckNumber < 100;

Delete from TruckMaintenance
Where MaintenanceNumber < 100;

Delete from drivers
Where EmployeeNumber < 100;

Delete from HaulRecord
Where HaulNumber < 100;

Delete from HaulManifest
Where ItemNumber < 100;