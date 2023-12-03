Create table LUMaintenanceType (
	MaintenanceTypeID int not null Primary Key,
	MaintenanceTypeDescription varchar(20),
-- Constraint for MaintenanceTypeDescription
	Constraint chk_MTD CHECK (MaintenanceTypeDescription IN ('Engine', 'Transmission', 'Tires', 'Body', 'Electrical', 'Hydraulic', 'Pneumatic'))
 );