CREATE PROCEDURE [dbo].[sp_Persons_Select]
	@Id int --Идентификатор лица
AS
begin
	SELECT	[Persons].[Id]
			,[Persons].[Surname]
			,[Persons].[Name]
			,[Persons].[Patronymic]
			,[Persons].[DateOfBirth]
			,[Persons].[Email]
			,[Persons].[Phone]
			,DATEDIFF(mm, [Persons].[DateOfBirth], getdate())/12 as [Age]
		from [dbo].Persons
		where [Persons].[Id] = @Id;
end