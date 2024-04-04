USE PD_321

SELECT
       [Группа]               = group_name,
	   [Количество студентов] = COUNT(stud_id) --COUNT() - Функция агрегирования
FROM Students, Groups
WHERE Students.[group] = Groups.group_id
GROUP BY group_name -- Если была применена функция агрегирования, то обязательно нужно сделать группировку данных
HAVING COUNT (stud_id) < 10
ORDER BY [Количество студентов] DESC --Descending -- в порядке убывания