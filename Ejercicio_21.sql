SELECT
	M.MOVIE_NAME AS MOVIE,
	MR.MEMBER_RENTAL_DATE AS RENTAL_DATE
FROM
	MEMBERS_MOVIE_RENTAL MR
JOIN MOVIES M ON
	MR.MOVIE_ID = M.MOVIE_ID
ORDER BY
	MR.MEMBER_RENTAL_DATE DESC
LIMIT 10;