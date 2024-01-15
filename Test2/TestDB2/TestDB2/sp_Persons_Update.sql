CREATE PROCEDURE [dbo].[sp_Persons_Update]
	@id	int						-- идентификатор лица
	,@Surname	nvarchar(50)	-- фамилия лица
	,@Name		nvarchar(50)	-- имя
	,@Patronymic	nvarchar(50)	-- отчество
	,@DateOfBerth	date		-- дата рожлдения
AS
begin
	set nocount on;

	update [dbo].[Persons]
		set [Id] = @id
			,[Surname] = @Surname
			,[Name] = @Name
			,[Patronymic] = @Patronymic
			,[DateOfBirth] = @DateOfBerth
		where
			[Id] = @id;
	
end
