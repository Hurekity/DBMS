USE PD_321

SELECT *
FROM Disciplines
WHERE discipline_name NOT LIKE ('%[A-Z]%')