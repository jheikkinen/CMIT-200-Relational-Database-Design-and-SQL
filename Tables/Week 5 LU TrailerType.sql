Create table LUTrailerType (
	TrailerTypeID int not null Primary Key,
	TrailerTypeDescription varchar(20),
-- Constarint for ShippingInsurance yes or no
	Constraint chk_TTD CHECK (TrailerTypeDescription IN ('Tanker', 'Flat Bed', 'Box', 'Refrigerated')),
 );