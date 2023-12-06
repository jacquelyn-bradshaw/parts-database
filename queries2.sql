-- Use the database PARTS that we created and populated at home
USE Parts;

-- WRITE THE FOLLOWING QUERIES
-- Using the table ‘parts’, return all unique part names
SELECT DISTINCT PNAME
FROM Part;

-- What happens if we want to return all unique parts and their id number? Why?  
SELECT DISTINCT  P_ID, PNAME
FROM Part;
-- pname is no longer distinct as the p_id for the two screw pnames are different so all distinct p_id's are returned

-- Refer to the table ‘projects’ and return all projects that are run in London.
SELECT JNAME
FROM Project
WHERE CITY = 'london';