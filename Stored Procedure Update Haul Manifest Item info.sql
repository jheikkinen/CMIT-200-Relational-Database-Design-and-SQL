Create Procedure ItemInfoUpdate (@ItemNumber int, @Item varchar(20), 
@ItemDescription varchar(50), @ItemWeight int, @Quantity int)
AS
UPDATE HaulManifest
SET Item = @Item, ItemDescription = @ItemDescription, ItemWeightPerUnit = @ItemWeight, Quantity = @Quantity
Where ItemNumber = @ItemNumber;