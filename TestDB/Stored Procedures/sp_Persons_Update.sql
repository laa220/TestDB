CREATE PROCEDURE [dbo].[sp_Persons_Update]
	@Id				int						--ID				
	,@Surname		nvarchar(50)			--Фамилия
	,@Name			nvarchar(50)			--Имя
	,@Patronymic	nvarchar(50)	=NULL	--Отчество	
	,@DateOfBirth	date			=NULL	--Дата рождения
AS
begin
	-- set nocount on запрещает вывод количества строк, на которые влияет
	-- инструкция Transact-SQL, в составе результатов данных
	set nocount on
	
	update [dbo].[Persons]
		set [Surname]		= @Surname
			,[Name]			= @Name
			,[Patronymic]	= @Patronymic
			,[DateOfBirth]	= @DateOfBirth
		where [Id]=@Id;
end