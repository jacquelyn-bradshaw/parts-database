USE Parts;

-- Find the name and weight of each red part
SELECT PNAME, WEIGHT
FROM Part
WHERE COLOUR = "red";

-- Find all UNIQUE supplier(s) name from London
SELECT DISTINCT SNAME
FROM Supplier
WHERE CITY = "London";