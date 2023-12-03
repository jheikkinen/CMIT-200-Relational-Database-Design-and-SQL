select TruckNumber, DateHaulBegan, DeliveryDate, Item, ItemDescription, ItemWeightPerUnit, Quantity
	From HaulRecord
	Left Join HaulManifest
	ON HaulRecord.HaulNumber = HaulManifest.HaulNumber
	Order by DateHaulBegan;