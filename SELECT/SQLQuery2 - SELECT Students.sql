USE PD_321

SELECT 
       [Ф.И.О. студента] = FORMATMESSAGE('%s %s %s', last_name,first_name,middle_name),
	   [Возраст] = DATEDIFF(hour, birth_date, GETDATE())/8766,
	   [Группа] = group_name

FROM  Students
JOIN Groups ON (Students.[group] = Groups.group_id)











--SELECT 
--         last_name + ' ' + first_name + ' ' + middle_name AS 'Ф.И.О студента',
--		 DATEDIFF(hour, birth_date, GETDATE())/8766 AS 'Возраст',
--		 group_name AS 'Группа'
	     
--FROM Students, Groups

--WHERE  Students.[group] = Groups.group_id --Ограничение
--ORDER BY last_name