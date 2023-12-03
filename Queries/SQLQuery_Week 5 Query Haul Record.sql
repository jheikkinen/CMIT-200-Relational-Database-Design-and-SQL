select * From HaulRecord
	Where TruckNumber > 3 AND (DateHaulBegan BETWEEN '2021-11-01' AND '2021-11-06')
	Order by DeliveryDate;