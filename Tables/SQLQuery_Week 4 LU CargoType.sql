Create table LUCargoType (
	CargoTypeID int not null Primary Key,
	CargoTypeDescription varchar(20),
-- Constraint for CargoTypeDescription
	Constraint chk_CTD CHECK (CargoTypeDescription IN ('Hazardous', 'Liquid', 'Refrigerated', 'Standard', 'Other'))
 );