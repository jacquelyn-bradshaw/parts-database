USE Parts;
/* Find the name and status of each supplier who supplies
project J2 */
SELECT sname,status
FROM supplier
WHERE s_id IN (
	SELECT s_id
	FROM supply
	WHERE j_id = "J2");

/* Find the name and city of each project supplied by a
London-based supplier */
SELECT jname, city
FROM project
WHERE j_id IN (
	SELECT j_id
    FROM supply
    WHERE s_id IN (
		SELECT s_id
        FROM supplier
        WHERE city = "London"));

/* Find the name and city of each project NOT supplied by
a London-based supplier */
SELECT jname, city
FROM project
WHERE j_id NOT IN (
	SELECT j_id
    FROM supply
    WHERE s_id IN (
		SELECT s_id
        FROM supplier
        WHERE city = "London"));

/* Find the supplier name, part name and project name for
each case WHERE a supplier supplies a project with a part,
BUT ALSO the supplier city, project city AND part city are
the same. */

SELECT sname, pname, jname FROM supply
INNER JOIN supplier ON supply.s_id = supplier.s_id
INNER JOIN project ON supply.j_id = project.j_id
INNER JOIN part ON supply.p_id = part.p_id
WHERE supplier.city = project.city AND supplier.city = part.city;
