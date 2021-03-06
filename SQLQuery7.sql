USE [AgentManagement]
GO
/****** Object:  StoredProcedure [dbo].[CustomerUpd]    Script Date: 3/25/2019 3:37:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[CustomerUpd]
@Customer_id numeric(18,0),
	@Password nvarchar(50),
	@Name nvarchar(50),
	@Date_of_birth date,
	@Address nvarchar(50),
	@Contact_no bigint,
	@Email nvarchar(50),
	@City varchar(50),
	@State nvarchar(50),
	@Date_of_join date,
	@Zipcode bigint
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Update Customer set Password=@Password,Name=@Name,Date_of_birth=@Date_of_birth,Address=@Address,Contact_no=@Contact_no,Email=@Email,City=@City,State=@State,Date_of_join=@Date_of_join,Zipcode=@Zipcode
	where Customer_id=@Customer_id;
END
