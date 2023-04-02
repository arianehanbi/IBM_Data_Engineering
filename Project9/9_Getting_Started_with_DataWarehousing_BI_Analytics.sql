-- Exercise 2

CREATE TABLE MyDimDate
(
    dateid integer NOT NULL,
    date date NOT NULL,
    Year integer NOT NULL,
    Month integer NOT NULL,
    MonthName varchar(10) NOT NULL,
    Day integer NOT NULL,
    Weekday integer NOT NULL,
    WeekdayName varchar(10) NOT NULL,
    PRIMARY KEY (dateid)
);

CREATE TABLE MyDimWaste
(
    wasteid integer NOT NULL,
    WasteType varchar(50) NOT NULL,
    PRIMARY KEY (wasteid)
);

CREATE TABLE MyDimZone
(
    zoneid integer NOT NULL,
    CollectionZone varchar(50) NOT NULL,
    CollectionCity varchar(50) NOT NULL,
    PRIMARY KEY (zoneid)
);

CREATE TABLE MyFactTrips
(
    Tripid integer NOT NULL,
    Dateid integer NOT NULL,
    Stationid integer NOT NULL,
    Truckid integer NOT NULL,
    Wastecollected float,
    PRIMARY KEY (Tripid)
);



-- Exercise 3

-- Task 9
CREATE TABLE DimDate
(
    dateid integer NOT NULL,
    date date NOT NULL,
    Year integer NOT NULL,
    Quarter integer NOT NULL,
    QuarterName varchar(2) NOT NULL,
    Month integer NOT NULL,
    MonthName varchar(10) NOT NULL,
    Day integer NOT NULL,
    Weekday integer NOT NULL,
    WeekdayName varchar(10) NOT NULL,
    PRIMARY KEY (dateid)
);

-- Task 10
CREATE TABLE DimTruck
(
	Truckid integer NOT NULL,
	TruckType varchar(20),
	PRIMARY KEY (Truckid)
);

-- Task 11
CREATE TABLE DimStation
(
    Stationid integer NOT NULL,
    City varchar(50) NOT NULL,
    PRIMARY KEY (Stationid)
);

-- Task 12
CREATE TABLE FactTrips
(
	Tripid integer NOT NULL,
	Dateid integer NOT NULL,
	Stationid integer NOT NULL,
	Truckid integer NOT NULL,
	Wastecollected float, 
	
	CONSTRAINT fk_dateid FOREIGN KEY(Dateid)
    REFERENCES DimDate (dateid),
	CONSTRAINT fk_stationid FOREIGN KEY(Stationid)
    REFERENCES DimStation (Stationid),
    CONSTRAINT fk_truckid FOREIGN KEY(Truckid)
    REFERENCES DimTruck (Truckid),
    
    PRIMARY KEY (Tripid)
);


-- Task 13
-- Create a grouping sets query using the columns stationid, trucktype, total waste collected.

SELECT stationid, trucktype, sum(wastecollected) AS totalwastedcollected
FROM FactTrips f
LEFT JOIN DimTruck dt
ON f.truckid = dt.truckid
GROUP BY GROUPING SETS(stationid, trucktype)
ORDER BY stationid, trucktype;

-- Task 14
-- Create a rollup query using the columns year, city, stationid, and total waste collected.
SELECT dd.year, ds.city, f.stationid, sum(wastecollected) AS totalwastedcollected
FROM FactTrips f
LEFT JOIN DimDate dd
ON f.dateid = dd.dateid
LEFT JOIN DimStation ds
ON f.stationid = ds.stationid
GROUP BY ROLLUP(dd.year, ds.city, f.stationid)
ORDER BY dd.year, ds.city, f.stationid;


-- Task 15
-- Create a cube query using the columns year, city, stationid, and average waste collected.
SELECT dd.year, ds.city, f.stationid, avg(wastecollected) AS averagewastedcollected
FROM FactTrips f
LEFT JOIN DimDate dd
ON f.dateid = dd.dateid
LEFT JOIN DimStation ds
ON f.stationid = ds.stationid
GROUP BY CUBE(dd.year, ds.city, f.stationid)
ORDER BY dd.year, ds.city, f.stationid;

-- Task 16
-- Create an MQT named maxwastestats using the columns city, stationid, trucktype, and max waste collected.
CREATE TABLE maxwastestats (city, stationid, trucktype, maxwastecollected)
AS (
	SELECT city, f.stationid, trucktype, max(wastecollected)
	FROM FactTrips f
	LEFT JOIN DimStation ds
	ON f.stationid = ds.stationid
	LEFT JOIN DimTruck dt
	ON f.truckid = dt.truckid
	GROUP BY city, f.stationid, trucktype
)
	DATA INITIALLY DEFERRED
	REFRESH DEFERRED
	MAINTAINED BY SYSTEM
	ENABLE QUERY OPTIMIZATION;

