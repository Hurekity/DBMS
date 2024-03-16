USE PD_321

SELECT 
         last_name + ' ' + first_name + ' ' + middle_name AS 'Ф.И.О студента',
		 DATEDIFF(hour, birth_date, GETDATE())/8766 AS 'Возраст',
		 group_name AS 'Группа',
		 [group] AS 'Направление'
FROM Students, Groups 
WHERE  Students.[group] = Groups.group_id --Ограничение
ORDER BY last_name