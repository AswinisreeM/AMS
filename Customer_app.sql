USE [AgentManagement]
GO
/****** Object:  StoredProcedure [dbo].[Customer_appSp]    Script Date: 3/22/2019 2:37:31 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[Customer_appSp]
	@Name nvarchar(50),
	@Address nvarchar(max),
	@City varchar(50),
	@State varchar(50),
	@Pincode bigint,
	@Employee_Type nvarchar(50),
	@Contact_no bigint,
	@Email nvarchar(50),
	@Contact_mode nvarchar(50),
	@Insurance_Already numeric(18,2),
	@Annual_income numeric(18,2),
	@Date_of_appointment date,
	@Preferrable_time time(7)
	

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Insert into Customer_app (Name,Address,City,State,Pincode,Employee_Type,Contact_no,Email,Contact_mode,Insurance_Already,Annual_income,Date_of_appointment,Preferrable_time)
	values (@Name,@Address,@City,@State,@Pincode,@Employee_Type,@Contact_no,@Email,@Contact_mode,@Insurance_Already,@Annual_income,@Date_of_appointment,@Preferrable_time);

END
