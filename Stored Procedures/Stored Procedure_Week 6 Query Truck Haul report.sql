CREATE Procedure TruckHaulReport(@TruckNumber int, @DateHaulBegan1 date, @DateHaulBegan2 date)
AS
select TruckInformation.*, HaulRecord.* 
	From TruckInformation
	join HaulRecord
	on HaulRecord.TruckNumber = TruckInformation.TruckNumber 
	Where TruckInformation.TruckNumber = @TruckNumber AND (DateHaulBegan BETWEEN @DateHaulBegan1 AND @DateHaulBegan2)
	Order by DateHaulBegan;