-- Create Dimension Tables
CREATE TABLE MyDimDate (
  dateid INT PRIMARY KEY,
  date DATE,
  year INT,
  quarter INT,
  quartername VARCHAR(4),
  month INT,
  monthname VARCHAR(10),
  day INT,
  weekday INT,
  weekdayname VARCHAR(20)
);

CREATE TABLE MyDimWaste (
  wasteid INT PRIMARY KEY,
  wastetype VARCHAR(50),
  wastetons DECIMAL(10, 2)
);


CREATE TABLE MyDimTruck (
  truckid INT PRIMARY KEY,
  trucktype VARCHAR(50)
);

CREATE TABLE MyDimStation (
  stationid INT PRIMARY KEY,
  city VARCHAR(50)
);

-- Create Fact Table
CREATE TABLE MyFactTrips (
  tripid INT PRIMARY KEY,
  FOREIGN KEY dateid INT REFERENCES MyDimDate(dateid),
  FOREIGN KEY stationid INT REFERENCES MyDimStation(stationid),
  FOREIGN KEY truckid INT REFERENCES MyDimTruck(truckid),
  wastecollected DECIMAL(10, 2)
);

