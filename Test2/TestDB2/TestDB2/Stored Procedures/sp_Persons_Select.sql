CREATE PROCEDURE [dbo].[sp_Persons_Select]
	@id int --идентификатор лица
	
AS
begin
	SELECT [Persons].[Id],
		[Persons].[Name],
		[Persons].[Surname],
		[Persons].[Patronymic],
		[Persons].[DateOfBirth]
	from [dbo].[Persons]
	where [persons].[id]=@id;
end
