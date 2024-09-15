-- The CUBE function provides aggregations at all combinations of year, city, and station, allowing for multidimensional analysis.
SELECT 
  d.year, 
  s.city, 
  f.stationid, 
  AVG(f.wastecollected) AS avg_waste_collected
FROM MyFactTrips f
JOIN MyDimDate d ON f.dateid = d.dateid
JOIN MyDimStation s ON f.stationid = s.stationid
GROUP BY CUBE(d.year, s.city, f.stationid);
