USE PD_321

SELECT 
   last_name + ' ' + first_name + ' ' + middle_name AS '�.�.� �������������',
   discipline_name                                  AS '����������'
FROM Teachers, Disciplines, TeachersDisciplineRelation
WHERE TeachersDisciplineRelation.teacher = Teachers.teacher_id
AND   TeachersDisciplineRelation.discipline = disciplines.discipline_id
AND   Teachers.last_name = '��������'