-- UPDATE, DELETE, TRUNCATE,INDEX EXAMPLES
USE Parts;

-- INDEX
CREATE INDEX first_index 
ON Part (COLOUR);

SELECT * 
FROM Part 
WHERE COLOUR = 'blue';
 
-- UPDATE
SELECT * 
FROM Parts.Part;

UPDATE Parts.Part
SET COLOUR = 'cyan'
WHERE CITY = 'london';

-- DELETE
DELETE FROM Parts.Part
WHERE P_ID = 'P4';

-- TRUNCATE - delete data
TRUNCATE TABLE Supply;
