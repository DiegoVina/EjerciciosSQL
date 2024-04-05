SELECT
	STUDIO_NAME,
	MAX(NATIONALITY_NAME) AS FAVORITE_NATIONALITY
FROM
	(
	SELECT
		STUDIO_NAME,
		NATIONALITY_NAME,
		COUNT(*) AS NATIONALITY_COUNT
	FROM
		STUDIOS s
	JOIN 
        MOVIES m ON
		s.STUDIO_ID = m.STUDIO_ID
	JOIN 
        NATIONALITY n ON
		m.NATIONALITY_ID = n.NATIONALITY_ID
	GROUP BY
		STUDIO_NAME,
		NATIONALITY_NAME
	ORDER BY
		STUDIO_NAME,
		NATIONALITY_COUNT DESC
) AS NATIONALITY_COUNTS
GROUP BY
	STUDIO_NAME;