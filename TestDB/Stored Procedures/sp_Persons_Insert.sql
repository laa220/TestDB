CREATE PROCEDURE [dbo].[sp_Persons_Insert]
	@Id				int						--ID				
	,@Surname		nvarchar(50)			--Фамилия
	,@Name			nvarchar(50)			--Имя
	,@Patronymic	nvarchar(50)	=NULL	--Отчество	
	,@DateOfBirth	date					--Дата рождения
	,@Email			nvarchar(50)	=null	--email
	,@Phone			nvarchar(15)	=null	--tel
AS
begin
	-- set nocount on запрещает вывод количества строк, на которые влияет
	-- инструкция Transact-SQL, в составе результатов данных
	set nocount on
	
	insert into [dbo].[Persons]
				([Id]
				,[Surname]
				,[Name]
				,[Patronymic]
				,[DateOfBirth]
				,[Email])				
				,[Phone])
			values
				(@Id
				,@Surname
				,@Name
				,@Patronymic
				,@DateOfBirth
				,@Email);				
				,@Phone);
end