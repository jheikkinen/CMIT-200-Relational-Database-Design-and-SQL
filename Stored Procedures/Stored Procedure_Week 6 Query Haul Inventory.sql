CREATE Procedure CompleteHaulReport(@TruckNumber int, @DateHaulBegan1 date, @DateHaulBegan2 date)
AS
select HaulRecord.*, HaulManifest.* From HaulRecord
	Left Join HaulManifest
	ON HaulRecord.HaulNumber = HaulManifest.HaulNumber
	Where TruckNumber = @TruckNumber AND (DateHaulBegan BETWEEN @DateHaulBegan1 AND @DateHaulBegan2)
	Order by DateHaulBegan;