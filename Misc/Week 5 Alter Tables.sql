ALTER TABLE dbo.HaulRecord   
DROP CONSTRAINT chk_CT;
ALTER TABLE dbo.HaulRecord   
ALTER COLUMN CargoType INT;

ALTER TABLE dbo.TrailerInformation   
DROP CONSTRAINT chk_TT;
ALTER TABLE dbo.TrailerInformation  
ALTER COLUMN TrailerType INT;  

ALTER TABLE dbo.TruckMaintenance   
DROP CONSTRAINT chk_Mcode;
ALTER TABLE dbo.TruckMaintenance   
ALTER COLUMN MaintenanceType INT;

ALTER TABLE dbo.TruckMaintenance   
DROP CONSTRAINT chk_MType;
ALTER TABLE dbo.TruckMaintenance   
ALTER COLUMN MaintenanceCode INT;  