-- Using HaulNumber and HaulMileage inputs to update the mileage per haul in haul record table.
Create Procedure HaulMileageUpdate (@HaulNumber int, @HaulMileage int)
AS
UPDATE HaulRecord
SET Mileage = @HaulMileage
Where HaulNumber = @HaulNumber;