CREATE DATABASE Parts;

USE Parts;

CREATE TABLE Part (
  P_ID VARCHAR(10) NOT NULL,
  PNAME VARCHAR(50) NOT NULL,
  COLOUR VARCHAR(50),
  WEIGHT INT,
  CITY VARCHAR(50)
);

CREATE TABLE Project (
  J_ID VARCHAR(10) NOT NULL,
  JNAME VARCHAR(50) NOT NULL,
  CITY VARCHAR(50)
);

CREATE TABLE Supplier (
  S_ID VARCHAR(10) NOT NULL,
  SNAME VARCHAR(50) NOT NULL,
  STATUS INT,
  CITY VARCHAR(50)
);

CREATE TABLE Supply (
  S_ID VARCHAR(10) NOT NULL,
  P_ID VARCHAR(10) NOT NULL,
  J_ID VARCHAR(10) NOT NULL,
  Quantity INT NOT NULL
);
