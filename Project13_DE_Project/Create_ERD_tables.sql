CREATE TABLE DimDate
(
	dateid integer NOT NULL,
	date date NOT NULL,
	Year integer NOT NULL,
	Quarter integer NOT NULL,
	QuarterName varchar(2) NOT NULL,
	Month integer NOT NULL,
	Monthname varchar(10) NOT NULL,
	Day integer NOT NULL,
	Weekday integer NOT NULL,
	WeekdayName varchar(10) NOT NULL,
	PRIMARY KEY (dateid)
);

CREATE TABLE DimCategory
(
	categoryid integer NOT NULL,
	category varchar(50) NOT NULL,
	PRIMARY KEY (categoryid)
);

CREATE TABLE DimCountry
(
	countryid integer NOT NULL,
	country varchar(50) NOT NULL,
	PRIMARY KEY (countryid)
);

CREATE TABLE FactSales
(
	orderid integer NOT NULL,
	dateid integer NOT NULL,
	countryid integer NOT NULL,
	categoryid integer NOT NULL,
	amout float,
	PRIMARY KEY (orderid)
);

ALTER TABLE FactSales
FOREIGN KEY (categoryid)
	REFERENCES DIMCATEGORY(categoryid)
		ON UPDATE NO ACTION
		ON DELETE CASCADE;
		
ALTER TABLE FactSales
FOREIGN KEY (countryid)
	REFERENCES DIMCOUNTRY(countryid)
		ON UPDATE NO ACTION
		ON DELETE CASCADE;		
    
ALTER TABLE FactSales
FOREIGN KEY (dateid)
	REFERENCES DIMDATE(dateid)
		ON UPDATE NO ACTION
		ON DELETE CASCADE;


