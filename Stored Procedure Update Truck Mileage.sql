Create Procedure TrailerMileageUpdate (@TrailerNumber int, @TrailerMileage int)
AS
UPDATE TrailerInformation
SET TrailerMileage = @TrailerMileage
Where TrailerNumber = @TrailerNumber;