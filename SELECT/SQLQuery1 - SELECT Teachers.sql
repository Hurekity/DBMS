USE PD_321

SELECT 
  last_name + ' ' + first_name + ' ' + middle_name AS '�.�.�. ��������',
  DATEDIFF(hour, birth_date, GETDATE())/8766 AS '�������',
  DATEDIFF(hour, work_since, GETDATE())/8766 AS '���� ������������',
  discipline AS '����������'

 FROM Teachers, TeachersDisciplineRelation
 --FROM Teachers
 --INNER JOIN TeachersDisciplineRelation ON teacher_id = teacher
 --WHERE teacher_id > teacher;
 
