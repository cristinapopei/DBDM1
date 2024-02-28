SELECT AVG(Runtime)
AS Average Runtime
FROM harry_potter_movies.movies
WHERE Release Year < '2005-01-01';

SELECT Character Name, 
COUNT(Dialogue ID) AS Dialogue Count
FROM characters
JOIN dialogue ON characters.Character ID = dialogue.Character ID
GROUP BY Character Name
ORDER BY Dialogue Count DESC
LIMIT 5;


SELECT Character Name, 
COUNT(Dialogue ID) AS Number of Dialogues
FROM harry_potter_movies.characters
JOIN harry_potter_movies.dialogue ON characters.Character ID = dialogue.Character ID
WHERE dialogue.Chapter ID = 2
GROUP BY Character Name
LIMIT 0, 25


SELECT DISTINCT ch.Chapter Name
FROM chapters ch
INNER JOIN dialogue d1 ON ch.Chapter ID = d1.Chapter ID
INNER JOIN dialogue d2 ON ch.Chapter ID = d2.Chapter ID
INNER JOIN characters c1 ON d1.Character ID = c1.Character ID
INNER JOIN characters c2 ON d2.Character ID = c2.Character ID
WHERE c1.Character Name = 'Harry Potter'
AND c2.Character Name = 'Hermione Granger';

SELECT c.Character Name
FROM characters c
WHERE c.Character ID NOT IN (    
	SELECT DISTINCT d.Character ID    
	FROM dialogue d    
	INNER JOIN chapters ch ON d.Chapter ID = ch.Chapter ID    
	INNER JOIN places p ON d.Place ID = p.Place ID    
	WHERE p.Place Name = 'Corridors'
);