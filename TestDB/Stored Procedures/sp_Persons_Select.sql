CREATE PROCEDURE [dbo].[sp_Persons_Select]
	@Id int --Идентификатор лица
AS
begin
	SELECT	[Persons].[Id]
			,[Persons].[Surname]
			,[Persons].[Name]
			,[Persons].[Patronymic]
			,[Persons].[DateOfBirth]
			,[Persons].[Phone]
		from [dbo].Persons
		where [Persons].[Id] = @Id;
end