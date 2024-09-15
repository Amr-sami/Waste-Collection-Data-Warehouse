-- Load data into MyDimDate from CSV
COPY MyDimDate(dateid, date, year, quarter, quartername, month, monthname, day, weekday, weekdayname)
FROM '/path/to/MyDimDate.csv' DELIMITER ',' CSV HEADER;

-- Load data into MyDimWaste from CSV
COPY MyDimWaste(wasteid, wastetype, wastetons)
FROM '/path/to/MyDimWaste.csv' DELIMITER ',' CSV HEADER;

-- Load data into MyDimZone from CSV
COPY MyDimZone(zoneid, zone, city)
FROM '/path/to/MyDimZone.csv' DELIMITER ',' CSV HEADER;

-- Load data into MyDimTruck from CSV
COPY MyDimTruck(truckid, trucktype)
FROM '/path/to/MyDimTruck.csv' DELIMITER ',' CSV HEADER;

-- Load data into MyDimStation from CSV
COPY MyDimStation(stationid, city)
FROM '/path/to/MyDimStation.csv' DELIMITER ',' CSV HEADER;

-- Load data into MyFactTrips from CSV
COPY MyFactTrips(tripid, dateid, stationid, truckid, wastecollected)
FROM '/path/to/MyFactTrips.csv' DELIMITER ',' CSV HEADER;
