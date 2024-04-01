SELECT
	AVG(DATEDIFF(YEAR, DIRECTOR_BIRTH_DATE, TODAY())) AS AVG_AGE
FROM
	DIRECTORS
WHERE
	DIRECTOR_DEAD_DATE IS NULL;