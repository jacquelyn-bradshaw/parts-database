USE Parts;

SELECT * FROM Part;

SELECT * FROM Project;

SELECT * FROM Supplier;

SELECT * FROM Supply;

SELECT * FROM Supply WHERE QUANTITY < 300;

SELECT S_ID, SNAME FROM Supplier WHERE CITY = "LONDON";