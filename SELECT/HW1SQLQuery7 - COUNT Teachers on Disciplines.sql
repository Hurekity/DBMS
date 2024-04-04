USE PD_321

--SELECT
--              [����������]                = discipline_name,
--		      [���������� ��������������] = COUNT(teacher_id)
--FROM          Teachers, Disciplines, TeachersDisciplineRelation
--WHERE         TeachersDisciplineRelation.teacher = Teachers.teacher_id
--AND           TeachersDisciplineRelation.discipline = discipline_id
--GROUP BY      discipline_name

SELECT 
              [����������]                = discipline_name,
    	      [���������� ��������������] = COUNT(teacher_id)
    
FROM     Teachers
JOIN     TeachersDisciplineRelation ON (teacher = teacher_id)
RIGHT JOIN     Disciplines ON (discipline = discipline_id)
GROUP BY discipline_name
HAVING   COUNT(teacher_id)>1 AND COUNT (teacher_id)<3
ORDER BY COUNT(teacher_id)
--ORDER BY [���������� ��������������]