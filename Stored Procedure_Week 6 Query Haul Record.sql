CREATE Procedure QuickHaulReport(@TruckNumber int, @DateHaulBegan1 date, @DateHaulBegan2 date)
AS
select * From HaulRecord
	Where TruckNumber = @TruckNumber AND (DateHaulBegan BETWEEN @DateHaulBegan1 AND @DateHaulBegan2)
	Order by DeliveryDate;