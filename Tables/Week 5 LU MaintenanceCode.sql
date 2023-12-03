Create table LUMaintenanceCode (
	MaintenanceCodeID int not null Primary Key,
	MaintenanceCodeDescription varchar(20),
-- Constraint for MaintennaceCodeDescription
	Constraint chk_MCD CHECK (MaintenanceCodeDescription IN ('Routine', 'Unscheduled'))
 );