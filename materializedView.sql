-- This materialized view calculates the maximum waste collected for each combination of city, station, and truck type, storing it for quick access.
CREATE MATERIALIZED VIEW max_waste_stats AS
SELECT 
  s.city, 
  f.stationid, 
  t.trucktype, 
  MAX(f.wastecollected) AS max_waste_collected
FROM MyFactTrips f
JOIN MyDimStation s ON f.stationid = s.stationid
JOIN MyDimTruck t ON f.truckid = t.truckid
GROUP BY s.city, f.stationid, t.trucktype;
