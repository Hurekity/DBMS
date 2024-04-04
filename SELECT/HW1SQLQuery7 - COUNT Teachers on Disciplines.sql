USE PD_321

--SELECT
--              [Дисциплина]                = discipline_name,
--		      [Количество преподавателей] = COUNT(teacher_id)
--FROM          Teachers, Disciplines, TeachersDisciplineRelation
--WHERE         TeachersDisciplineRelation.teacher = Teachers.teacher_id
--AND           TeachersDisciplineRelation.discipline = discipline_id
--GROUP BY      discipline_name

SELECT 
              [Дисциплина]                = discipline_name,
    	      [Количество преподавателей] = COUNT(teacher_id)
    
FROM     Teachers
JOIN     TeachersDisciplineRelation ON (teacher = teacher_id)
RIGHT JOIN     Disciplines ON (discipline = discipline_id)
GROUP BY discipline_name
HAVING   COUNT(teacher_id)>1 AND COUNT (teacher_id)<3
ORDER BY COUNT(teacher_id)
--ORDER BY [Количество преподавателей]