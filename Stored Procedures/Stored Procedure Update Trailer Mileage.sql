USE [XYZ_Trucking]
GO
/****** Object:  StoredProcedure [dbo].[DriverInsert]    Script Date: 12/15/2021 11:25:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 ALTER Procedure [dbo].[DriverInsert](@Name varchar(20), @DateOfBirth date, @DateOfHire date, 
 @CommercialDriverLicense varchar(3), @TruckNumber int)
AS
Insert into drivers
Values (@Name, @DateOfBirth, @DateOfHire, 
 @CommercialDriverLicense, @TruckNumber);

