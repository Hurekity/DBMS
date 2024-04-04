USE PD_321

--SELECT
--            [Ф.И.О студента]       = FORMATMESSAGE('%s, %s, %s', last_name, first_name, middle_name),
--			[Направление обучения] = direction_name
--FROM    Students, Groups, Directions
--WHERE   Students.[group] = Groups.group_id
--AND     Groups.direction  = Directions.direction_id

SELECT
     [Ф.И.О студента]       = FORMATMESSAGE('%s, %s, %s', last_name, first_name, middle_name),			
	 [Группа]               = Groups.group_name,
	 [Направление обучения] = direction_name
FROM Students
RIGHT OUTER JOIN Groups ON (Students.[group] = Groups.group_id)
JOIN Directions ON  (Groups.direction = Directions.direction_id)

