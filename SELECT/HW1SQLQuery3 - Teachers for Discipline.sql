USE PD_321

SELECT
   --     [Ф.И.О. преподавателя] = FORMATMESSAGE ('%s %s %s', last_name, first_name, middle_name),
		[Дисциплина]           = discipline_name

FROM  Teachers, Disciplines, TeachersDisciplineRelation
WHERE TeachersDisciplineRelation.teacher    = Teachers.teacher_id
AND   TeachersDisciplineRelation.discipline = Disciplines.discipline_id
AND   Disciplines.discipline_name LIKE ('%C#%')
--AND   Disciplines.discipline_name LIKE ('%C__%')
--AND   Disciplines.discipline_name LIKE ('%[^A-Z]%')