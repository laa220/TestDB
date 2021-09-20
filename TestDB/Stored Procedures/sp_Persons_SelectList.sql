CREATE PROCEDURE [dbo].[sp_Persons_SelectList]	
AS
begin
	-- set nocount on запрещает вывод количества строк, на которые влияет
	-- инструкция Transact-SQL, в составе результатов данных
	set nocount on

	SELECT [Persons].[Id]
	,[Persons].[Surname] + N' ' + [Persons].[Name] + isnull(N' ' + [Persons].[Patronymic], N'')
	from [dbo].[Persons]
end
