CREATE PROCEDURE [dbo].[sp_Persons_Insert]
	@id	int						-- идентификатор лица
	,@Surname	nvarchar(50)	-- фамилия лица
	,@Name		nvarchar(50)	-- имя
	,@Patronymic	nvarchar(50) = null	-- отчество
	,@DateOfBerth	date = null	-- дата рожлдения
AS
begin
	set nocount on;

	insert into [dbo].[Persons]
		([Id], [Surname], [Name], [Patronymic], [DateOfBirth])
	values
		(@id,@Surname,@Name,@Patronymic,@DateOfBerth);
end
