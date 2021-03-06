USE [AgentManagement]
GO
/****** Object:  StoredProcedure [dbo].[Customer_policysp]    Script Date: 3/27/2019 10:06:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[Customer_policysp]
@Customer_id numeric(18,0),
@Policy_name nvarchar(50),
@Policy_company nvarchar(50),
@Date_of_booking date,
@Sum_assured nvarchar(50),
@Payment_mode nvarchar(50),
@Login_Id numeric(18,0),
@Date_of_birth date,
@Height nvarchar(50),
@Weight nvarchar(50),
@Identification_mark nvarchar(50),
@Nominee_name nvarchar(50),
@Nominee_relationship nvarchar(50),
@Nominee_date_of_birth date,
@Contact_no nvarchar(50),
@Appointment_id numeric(18,0)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into Customer_Policy_Reg (Customer_id,Policy_company,Date_of_booking,Sum_assured,Payment_mode,Date_of_birth,Height,Weight,Identification_mark,Nominee_name,Nominee_relationship,Nominee_date_of_birth,Contact_no,Appointment_id) values(@Policy_name,@Policy_company,@Date_of_booking,@Sum_assured,@Payment_mode,@Date_of_birth,@Height,@Weight,@Identification_mark,@Nominee_name,@Nominee_relationship,@Nominee_date_of_birth,@Contact_no,@Appointment_id)
END
