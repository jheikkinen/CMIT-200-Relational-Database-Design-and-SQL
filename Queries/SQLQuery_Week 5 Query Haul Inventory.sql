select * From HaulRecord
	Left Join HaulManifest
	ON HaulRecord.HaulNumber = HaulManifest.HaulNumber
	Where TruckNumber > 2 AND (DateHaulBegan BETWEEN '2021-11-03' AND '2021-11-10')
	Order by DateHaulBegan;