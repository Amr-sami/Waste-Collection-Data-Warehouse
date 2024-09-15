-- This query aggregates the waste collected by year, city, and station using the ROLLUP function. It provides summary data at various levels of detail.
SELECT 
  d.year, 
  s.city, 
  f.stationid, 
  SUM(f.wastecollected) AS total_waste_collected
FROM MyFactTrips f
JOIN MyDimDate d ON f.dateid = d.dateid
JOIN MyDimStation s ON f.stationid = s.stationid
GROUP BY ROLLUP(d.year, s.city, f.stationid);


