USE PD_321

SELECT
            [Дисциплина] = discipline_name,
			[Направление обучения] = directon_name
FROM Disciplines, Directions, DisciplinesDirectionsRelation
WHERE DisciplinesDirectionsRelation.discipline = Disciplines.discipline_id
AND DisciplinesDirectionsRelation.direction = Directions.direction_id
AND Directions.directon_name LIKE ('%Java%')